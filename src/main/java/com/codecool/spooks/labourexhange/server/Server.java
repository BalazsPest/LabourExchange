package com.codecool.spooks.labourexhange.server;

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
        port(9992);



        get("/hello", (req, res) -> "Hello World");

        get("/registration", (request, response) -> { HashMap <String, Object> model = new HashMap<>();
        return new ModelAndView(model, "registration");
        }, new ThymeleafTemplateEngine());
        get("/login", Controller::userLogin, new ThymeleafTemplateEngine());
        post("/authenticateuser", Controller::authenticateUser);
        post("/registrateuser", Controller::registerUser, new ThymeleafTemplateEngine());
        get("/index", Controller::renderAdvertisement, new ThymeleafTemplateEngine());

        enableDebugScreen();


        get("/new-advertisement", Controller::renderNewAdvertisementPage, new ThymeleafTemplateEngine());

        post("/make-advertisement", Controller::makeAdvertisement, new ThymeleafTemplateEngine());

        get("/filter/:city", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());

        get("/filter",(Request req, Response res) -> {
            return new ThymeleafTemplateEngine().render( Controller.renderAdvertisementsByFilter(req, res));



        //get("/filter/budapest", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());

        //get("/filter/catering", Controller::getAdvertWithField, new ThymeleafTemplateEngine());


        //get("/companys", //ProductController::renderProducts, new ThymeleafTemplateEngine());

        //get("/student", //ProductController::renderProducts, new ThymeleafTemplateEngine()); show citys and their students

        });
    }
}