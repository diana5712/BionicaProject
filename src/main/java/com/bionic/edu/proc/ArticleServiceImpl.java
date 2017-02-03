package com.bionic.edu.proc;

import java.util.List;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.transaction.annotation.Transactional;

@Named
public class ArticleServiceImpl implements ArticleService{
	@Inject
    private ArticleDao articleDao;

    public Article findById(int id) { 
    	return articleDao.findById(id); 
    }

    public List<Article> findAll(){
    	return articleDao.findAll();
    }
    
    @Transactional
    public void save(Article article){
    	articleDao.save(article);
    }
    
    @Transactional
    public void remove(int id){
		articleDao.remove(id);
    }
    
    @Transactional
    public void update(int id, String categ, String sect,
    		String alreadyRead, String nameOfArticle, String textOfArticle,
    		String userLogin){
    	articleDao.update(id, categ, sect,
    	    alreadyRead, nameOfArticle, textOfArticle,
    		 userLogin);
    }
}
