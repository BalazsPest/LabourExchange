package com.codecool.spooks.labourexhange.controller;


import com.codecool.spooks.labourexhange.domain.Domain;
import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.domain.DBController;
import com.codecool.spooks.labourexhange.model.adverts.Status;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Controller {


    private static Domain domain = new Domain();


    public static ModelAndView getActiveAdverts(Request req, Response res){
        City city = new City();
        System.out.println(city.getClass().getSimpleName());
        Map<String, Object> params = domain.getAdvertsWithStatus(Status.ACTIVE);
        System.out.println(params);
        return new ModelAndView(params, "index");
    }



    public static ModelAndView getAdvertsWithCity(Request req, Response res){
        //String city = req.params("city");
        Map<String, Object> params =domain.getAdvertsWithCity(1);
        return new ModelAndView(params, "index");
    }


    public static ModelAndView getAdvertsWithField(Request req, Response res){
        Map<String, Object> params = domain.getAdvertsWithField("catering");
        return new ModelAndView(params, "index");
    }

    public static ModelAndView getUserById(Request req, Response res){
        Map<String, Object> params = domain.getUserById(2);

        return new ModelAndView(params, "index");
    }

    public static ModelAndView getAdvertBetweenPrice(Request req, Response res){
        Map<String, Object> params = domain.getAdvertBetween(600,900);

        return new ModelAndView(params, "index");
    }

    public static ModelAndView getAdvertBetweenWorkHours(Request req, Response res){
        Map<String, Object> params = domain.getAdvertBetween(20,40);

        return new ModelAndView(params, "index");
    }



/*
    public static ModelAndView getadvertisement(Request req, Response res) {
        //Integer id = req.queryParams("id");
        Map<String, Object> params = domain.getAdvertById(id);
        return new ModelAndView(params, "index");
    }



    public static ModelAndView filterAdvert(Request req, Response res){
        Map<String, Object> params =domain.filterAdvertsBy();
        return new ModelAndView(params, "index");
    }*/



/*


    public static ModelAndView getAdvertWithField(Request req, Response res){

        List<Advertisement> advertisementsWithCity = thisController.getAdvertWithField();



        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }




    public static ModelAndView renderNewAdvertisementPage(Request req, Response res){
        Map<String, Object> params = new HashMap<>();
        List<City> cities = thisController.getCityNames();
        List<Language> languages = thisController.getLanguages();
        List<Field> fields = thisController.getFields();
        params.put("cities", cities);
        params.put("languages", languages);
        params.put("fields", fields);
        return new ModelAndView(params, "advertisement");
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
*/
}