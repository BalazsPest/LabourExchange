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


import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Controller {


    private Domain domain;


    public Controller(Domain domain) {
        this.domain = domain;
    }



    public ModelAndView renderActiveAdvertisements(Request req, Response res){
        Map<String, Object> params = domain.getAdvertsWithStatus(Status.ACTIVE);
        System.out.println(params);
        return new ModelAndView(params, "index");
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
        params.put("advertisement", advertisementsWithCity);*/


    public ModelAndView getAdvertsWithCity(Request req, Response res){
        //String city = req.params("city");
        Map<String, Object> params = domain.getAdvertsWithCity(1);
        return new ModelAndView(params, "index");
    }


    public ModelAndView getAdvertsWithField(Request req, Response res){
        Map<String, Object> params = domain.getAdvertsWithField("catering");
        return new ModelAndView(params, "index");
    }

    public ModelAndView getUserById(Request req, Response res){
        Map<String, Object> params = domain.getUserById(2);

        return new ModelAndView(params, "index");
    }

    public  ModelAndView getAdvertBetweenPrice(Request req, Response res){
        Map<String, Object> params = domain.getAdvertBetween(600,900);

        return new ModelAndView(params, "index");
    }

    public  ModelAndView getAdvertBetweenWorkHours(Request req, Response res) {
        Map<String, Object> params = domain.getAdvertBetween(20,40);

        return new ModelAndView(params, "index");
    }




    /*public ModelAndView getadvertisement(Request req, Response res) {
        Integer id = Integer.parseInt(req.queryParams("id"));
        Map<String, Object> params = domain.getAdvertById(id);
        return new ModelAndView(params, "index");
    }



    public ModelAndView filterAdvert(Request req, Response res){
        Object object = null;
        Map<String, Object> params =domain.filterAdvertsBy(object);
        return new ModelAndView(params, "index");
    }*/



    public ModelAndView renderNewAdvertisementPage(Request req, Response res){
        Map<String, Object> params = new HashMap<>();
        List<City> cities = domain.getCityNames();
        List<Language> languages = domain.getLanguages();
        List<Field> fields = domain.getFields();
        if (cities != null && languages!= null && fields!= null) {
            params.put("cities", cities);
            params.put("languages", languages);
            params.put("fields", fields);
            return new ModelAndView(params, "advertisement");
        }
        res.redirect("404");
        return null;
    }

    public ModelAndView makeAdvertisement(Request req, Response res) {

        int id = Integer.parseInt(req.session().attribute("userId"));
        //int id = 1;
        System.out.println("id: " + id);

        String title = req.queryParams("title");
        String description = req.queryParams("description");
        String field = req.queryParams("field");
        String city = req.queryParams("city");


        String filterCity = req.queryParams("filterCity");
        System.out.println("Filtercity:" + filterCity);

        int weeklyCapacity = Integer.parseInt(req.queryParams("weeklyCapacity"));
        int requestedMoney = Integer.parseInt(req.queryParams("requestedMoney"));

        System.out.println("field" + field);
        System.out.println("descrpition" + description);


        if (domain.createNewAdvertisement(id, title, description, field, city, weeklyCapacity, requestedMoney)) {
            res.redirect("index");
        } else {
            res.redirect("404");
        }
        return null;
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
        }
        return null;
        /*if (thisController.getUserIfPasswordAndMailIsForSameUser(req)) {
            req.session().attribute("id", req.queryParams("id"));*/
    }
}