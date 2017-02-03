package com.bionic.edu.proc;

import java.util.List;

public interface ArticleDao {
	public Article findById(int id);
	public List<Article> findAll();
	public void save(Article user);
	public void remove(int id);
	public void update(int id, String categ, String sect,
    		String alreadyRead, String nameOfArticle, String textOfArticle,
    		String userLogin);
}
