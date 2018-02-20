package com.codecool.spooks.labourexhange.server;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.Status;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Student;
import spark.ModelAndView;
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
import java.util.HashMap;
import java.util.List;

import static org.eclipse.persistence.config.ResultType.Map;
import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Server {



    public static void main(String[] args) {

        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        //staticFileLocation("/public");
        port(8888);

        get("/hello", (req, res) -> "Hello World");
        get("/registration", (request, response) -> { HashMap <String, Object> model = new HashMap<>();
        return new ModelAndView(model, "registration");
        }, new ThymeleafTemplateEngine());
        get("/login", Controller::userLogin, new ThymeleafTemplateEngine());
        post("/authenticateuser", Controller::authenticateUser);
        post("/registrateuser", Controller:: registrateUser, new ThymeleafTemplateEngine());
        get("/index", Controller::renderAdvertisement, new ThymeleafTemplateEngine());
        enableDebugScreen();

        get("/filter/:city", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());
    }
}