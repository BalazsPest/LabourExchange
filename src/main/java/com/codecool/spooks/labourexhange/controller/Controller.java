package com.codecool.spooks.labourexhange.controller;

import com.codecool.spooks.labourexhange.domain.Domain;
import com.codecool.spooks.labourexhange.model.adverts.Advertisement;
import com.codecool.spooks.labourexhange.model.adverts.category.Field;
import com.codecool.spooks.labourexhange.model.users.City;
import com.codecool.spooks.labourexhange.model.users.Language;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Controller {

    private Domain domain;


    public Controller(Domain domain) {
        this.domain = domain;
    }



    public ModelAndView renderAdvertisement(Request req, Response res){

        List<Advertisement> advertisements = domain.getAdverts();

        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisements);
        System.out.println(params);
        System.out.println((String) req.session().attribute("userId"));
        return new ModelAndView(params, "index");
    }

    public ModelAndView getAdvertWithCity(Request req, Response res){
        String city = req.params("city");
        List<Advertisement> advertisementsWithCity = domain.getAdvertsWithCities(city);
        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }


    public ModelAndView renderAdvertisementsByFilter(Request req, Response res){
        Map<String, Object> filteredParams = new HashMap<>();


        List<City> cities = domain.getCityNames();
        filteredParams.put("cities", cities);
        int cityId = Integer.parseInt(req.queryParams("city"));

        City city = domain.cityById(cityId);
        filteredParams.put("city", city);
        filteredParams.put("advertisement", domain.getAdvertisementBy(city));

        return new ModelAndView(filteredParams, "index");

    }
    /*
    public static ModelAndView getAdvertWithField(Request req, Response res){

        List<Advertisement> advertisementsWithCity = thisController.getAdvertWithField();



        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }*/


    public ModelAndView renderNewAdvertisementPage(Request req, Response res){
        Map<String, Object> params = new HashMap<>();
        List<City> cities = domain.getCityNames();
        List<Language> languages = domain.getLanguages();
        List<Field> fields = domain.getFields();
        params.put("cities", cities);
        params.put("languages", languages);
        params.put("fields", fields);
        return new ModelAndView(params, "advertisement");
    }



    public ModelAndView registrateUser(Request req, Response res) {
        Map<String, Object> params = new HashMap<>();
        String userName = req.queryParams("userName");
        String name = req.queryParams("name");
        String eMailAddress = req.queryParams("eMailAddress");
        String password = req.queryParams("password");
        if (domain.registrateTheUser(userName, name, eMailAddress, password)) {
            //req.session().attribute("id", req.queryParams("id"));

            //if (thisController.addUser(req)) {
            res.redirect("/login");
        }
        //is it okay?
        params.put("notManagedToRegistrate", true);
        return new ModelAndView(params, "registration");
    }

    public ModelAndView userLogin(Request req, Response res) {
        Map<String, Object> params = new HashMap<>();
        params.put("login", true);
        return new ModelAndView(params, "registration");
    }

    public ModelAndView authenticateUserAfterLogin(Request req, Response res) {
        String password = req.queryParams("password");
        String eMailAddress = req.queryParams("eMailAddress");
        int id = domain.authenticateUserAndIfSuccessGetUserId(password, eMailAddress);
        String userId = Integer.toString(id);
        if (id != 0) {
            req.session().attribute("userId", userId);
            System.out.println((String) req.session().attribute("userId"));
            res.redirect("/index");
        } else {
            res.redirect("/registration");
        } return null;
        /*if (thisController.getUserIfPasswordAndMailIsForSameUser(req)) {
            req.session().attribute("id", req.queryParams("id"));
            res.redirect("/index");
        } else {
            res.redirect("/registration");
        }
        return null;*/
    }
}