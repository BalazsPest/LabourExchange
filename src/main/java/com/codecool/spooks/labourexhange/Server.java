package com.codecool.spooks.labourexhange;

import com.codecool.spooks.labourexhange.controller.Controller;
import spark.Spark;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import static spark.Spark.get;

import spark.ModelAndView;
import spark.Request;
import spark.Response;

import java.util.HashMap;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;


public class Server {



    public static void main(String[] args) {

        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(7000);

        get("/hello", (req, res) -> "Hello World");
        get("/registration", (request, response) -> { HashMap <String, Object> model = new HashMap<>();
        return new ModelAndView(model, "registration");
        }, new ThymeleafTemplateEngine());
        //Spark.get("/login", Controller::userLogin, new ThymeleafTemplateEngine());
        //post("/authenticateuser", Controller::authenticateUser);
        //post("/registrateuser", Controller:: registrateUser, new ThymeleafTemplateEngine());
        get("/index", Controller::getActiveAdverts, new ThymeleafTemplateEngine());
        enableDebugScreen();

        get("/filter/Budapest", Controller::getAdvertsWithCity, new ThymeleafTemplateEngine());

        //get("/newAdv", Controller::renderNewAdvertisementPage, new ThymeleafTemplateEngine());

        //get("/filter",(Request req, Response res) -> {
        //    return new ThymeleafTemplateEngine().render( Controller.renderAdvertisementsByFilter(req, res));

        //get("/filter", Controller::renderAdvertisementsByCityFilter, new ThymeleafTemplateEngine());


        get("/filter/catering", Controller::getAdvertsWithField, new ThymeleafTemplateEngine());


        //get("/companys", //ProductController::renderProducts, new ThymeleafTemplateEngine());

        //get("/student", //ProductController::renderProducts, new ThymeleafTemplateEngine()); show citys and their students


    }
}