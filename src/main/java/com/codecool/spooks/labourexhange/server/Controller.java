package com.codecool.spooks.labourexhange.server;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.Status;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.adverts.category.Tag;
import com.codecool.spooks.labourexhange.databaseOperation.DBController;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Language;
import com.codecool.spooks.labourexhange.users.Student;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static spark.Spark.redirect;

public class Controller {

    private static DBController thisController = new DBController();


    public static ModelAndView renderAdvertisement(Request req, Response res){
        List<Advertisement> advertisements = thisController.getAllAdverts();
        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisements);
        return new ModelAndView(params, "index");
    }

    public static ModelAndView getAdvertWithCity(Request req, Response res){
        String city = req.params("city");
        List<Advertisement> advertisementsWithCity = thisController.getAdvertsWithCities(city);
        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }

    public static ModelAndView registrateUser(Request req, Response res) {
        Map<String, Object> params = new HashMap<>();
        if (thisController.addUser(req)) {
            res.redirect("/index");
        }
        params.put("notManagedToRegistrate", true);
        return new ModelAndView(params, "registration");
    }

    public static ModelAndView userLogin(Request req, Response res) {
        Map<String, Object> params = new HashMap<>();
        params.put("login", true);
        return new ModelAndView(params, "registration");
    }

    public static ModelAndView authenticateUser(Request req, Response res) {
        if (thisController.checkUserPassword(req)) {
            req.session().attribute("userName", req.queryParams("userName"));
            res.redirect("/index");
        } else {
            res.redirect("/registration");
        }
        return null;
    }
}