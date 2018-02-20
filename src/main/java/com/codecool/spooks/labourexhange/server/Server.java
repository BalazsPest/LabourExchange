package com.codecool.spooks.labourexhange.server;

import spark.template.thymeleaf.ThymeleafTemplateEngine;

import static spark.Spark.get;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.Status;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.databaseOperation.DBController;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Student;

import spark.Request;
import spark.Response;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Server {



    public static void main(String[] args) {

        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(7000);

        get("/hello", (req, res) -> "Hello World");
        get("/index", Controller::renderAdvertisement, new ThymeleafTemplateEngine());
        enableDebugScreen();

        get("/filter/:city", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());

        get("/newAdv", Controller::renderNewAdvertisementPage, new ThymeleafTemplateEngine());

        get("/filter",(Request req, Response res) -> {
            return new ThymeleafTemplateEngine().render( Controller.renderAdvertisementsByFilter(req, res));



        //get("/filter/budapest", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());

        //get("/filter/catering", Controller::getAdvertWithField, new ThymeleafTemplateEngine());


        //get("/companys", //ProductController::renderProducts, new ThymeleafTemplateEngine());

        //get("/student", //ProductController::renderProducts, new ThymeleafTemplateEngine()); show citys and their students

        });


    }
}