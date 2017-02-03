package com.bionic.edu.web;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import com.bionic.edu.proc.Article;
import com.bionic.edu.proc.ArticleService;

@Controller
@RequestMapping("/testControl")
public class TestController {
	/*
	String msg = "";
	@RequestMapping(value = "/message", method = 	RequestMethod.GET)
    public String showList(ModelMap model) {
		msg = "Hello, Diana!";
		model.addAttribute("attributName", msg);
		return "ShowMessage";
	}
	*/
	
	
	List<Article> list = null;
    @Inject
    ArticleService service;
    @RequestMapping(value = "/listOfArticles", method = RequestMethod.GET)
    public String showList(ModelMap model) {
	list = service.findAll();
	model.addAttribute("articleList", list);
	model.addAttribute("article", new Article());
	return "listOfArticles";
	}

    
    @RequestMapping(value = "/newArticle", method = RequestMethod.GET)
    public String newArticle(ModelMap model) {
	model.addAttribute("article", new Article());
	return "newArticle";    
    }
    
    @RequestMapping(value = "/addArticle", method = RequestMethod.POST)
    public String addArticle(@ModelAttribute("article")Article article,
    	ModelMap model) {
       article.setUserLogin("Diana");
       service.save(article);
       list = service.findAll();
       model.addAttribute("articleList", list);
       return "listOfArticles";    
   }
    
    @RequestMapping(value = "/deleteArticle", method = RequestMethod.POST)
    public String deleteArticle(@RequestParam(value = "idArt") int idArt,
    		@ModelAttribute("article")Article article, ModelMap model) {
       service.remove(idArt);
       list = service.findAll();
       model.addAttribute("articleList", list);
       return "listOfArticles";    
   }
    
    @RequestMapping(value = "/editArticle", method = RequestMethod.POST)
    public String editArticle(@RequestParam(value = "idArt") int idArt,
    		@RequestParam(value = "loginArt") String loginArt,
    		@ModelAttribute("article")Article article,
    		ModelMap model) {
       service.update(idArt, article.getCategory(), article.getSection(),
    		   article.getAlreadyRead(), article.getNameOfArticle(), 
    		   article.getTextOfArticle(), loginArt);
       list = service.findAll();
       model.addAttribute("articleList", list);
       return "listOfArticles";    
   }
    
}
