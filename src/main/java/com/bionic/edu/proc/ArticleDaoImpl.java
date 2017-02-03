package com.bionic.edu.proc;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

@Repository
public class ArticleDaoImpl implements ArticleDao{
	@PersistenceContext
    private EntityManager entityManager;

    public Article findById(int id){
    	Article article = null;
    	article = entityManager.find(Article.class, id);
    	return article;
    }

    public List<Article> findAll(){
      TypedQuery<Article> query = 
    		  entityManager.createQuery("SELECT article FROM Article article", Article.class);
    	List<Article> listArticles = null;
    	listArticles = query.getResultList();
    	return listArticles;    
    }  
    
    public void remove(int id){
        Article article = entityManager.find(Article.class, id);
	    if (article != null){
	    	entityManager.remove(article);
	    }
    } 
    
    public void save(Article article){
    	//article.setUserLogin("Diana");
    	//article.setAlreadyRead("no");
    	entityManager.persist(article);
    }
    
    public void update(int id, String categ, String sect,
    		String alreadyRead, String nameOfArticle, String textOfArticle,
    		String userLogin){
    	Article article = entityManager.find(Article.class, id);
    	if (article != null){
    		article.setCategory(categ);
    		article.setSection(sect);
    		article.setAlreadyRead(alreadyRead);
    		article.setNameOfArticle(nameOfArticle);
    		article.setTextOfArticle(textOfArticle);
    		article.setUserLogin(userLogin);
    	}
    }
}
