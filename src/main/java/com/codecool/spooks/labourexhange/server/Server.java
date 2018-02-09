package com.codecool.spooks.labourexhange.server;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.Status;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.databaseOperation.DBController;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Student;
import spark.Request;
import spark.Response;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Server {



    public static void main(String[] args) {

        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        //staticFileLocation("/public");
        port(8888);

        //get("/", (Request req, Response res) -> new ThymeleafTemplateEngine().render(Controller.renderAdvertisement(req,res)));
        get("/hello", (req, res) -> "Hello World");
        get("/index", Controller::renderAdvertisement, new ThymeleafTemplateEngine());

        enableDebugScreen();





        get("/filter/budapest", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());

        get("/filter/catering", Controller::getAdvertWithField, new ThymeleafTemplateEngine());


        //get("/companys", //ProductController::renderProducts, new ThymeleafTemplateEngine());

        //get("/student", //ProductController::renderProducts, new ThymeleafTemplateEngine()); show citys and their students





}




    }


















    //}
    //}



