package com.codecool.spooks.labourexhange;

import com.codecool.spooks.labourexhange.controller.Controller;
import com.codecool.spooks.labourexhange.domain.Domain;
import com.codecool.spooks.labourexhange.service.*;

import spark.template.thymeleaf.ThymeleafTemplateEngine;

import static spark.Spark.get;

import spark.ModelAndView;
import spark.Request;
import spark.Response;

import java.util.HashMap;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;


public class Server {

    private Controller controller;



    public Server (Controller controller) {
        this.controller = controller;
    }

    public static void main(String[] args) {
        UserService usrService = new UserService();
        AdvertisementService advService = new AdvertisementService();
        FieldService fieldService = new FieldService();
        CityService cityService = new CityService();
        LanguageService lngService = new LanguageService();
        Domain domain = new Domain(advService, usrService, fieldService, cityService, lngService);
        Controller controller = new Controller(domain);
        Server server = new Server(controller);


        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(9992);



        get("/hello", (req, res) -> "Hello World");

        get("/registration", (request, response) -> { HashMap <String, Object> model = new HashMap<>();
        return new ModelAndView(model, "registration");
        }, new ThymeleafTemplateEngine());
        get("/login", controller::userLogin, new ThymeleafTemplateEngine());
        post("/authenticateuser", controller::authenticateUserAfterLogin);
        post("/registrateuser", controller:: registrateUser, new ThymeleafTemplateEngine());
        get("/index", controller::renderActiveAdvertisements, new ThymeleafTemplateEngine());
        enableDebugScreen();
        get("/companyIndex", controller::renderCompanyIndex, new ThymeleafTemplateEngine());
        get("/studentIndex", controller::renderStudentIndex, new ThymeleafTemplateEngine());

        get("/filter/:city", controller::getAdvertWithCity, new ThymeleafTemplateEngine());


        get("/new-advertisement", controller::renderNewAdvertisementPage, new ThymeleafTemplateEngine());
        post("/make-advertisement", controller::makeAdvertisement, new ThymeleafTemplateEngine());


        get("/filter",(Request req, Response res) -> {
            return new ThymeleafTemplateEngine().render( controller.renderAdvertisementsByFilter(req, res));});



        //get("/filter/budapest", Controller::getAdvertWithCity, new ThymeleafTemplateEngine());

        //get("/filter/catering", Controller::getAdvertWithField, new ThymeleafTemplateEngine());


        //get("/companys", //ProductController::renderProducts, new ThymeleafTemplateEngine());

        //get("/student", //ProductController::renderProducts, new ThymeleafTemplateEngine()); show citys and their students

    }
}