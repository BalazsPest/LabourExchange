package com.codecool.spooks.labourexhange.server;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.databaseOperation.DBController;
import com.codecool.spooks.labourexhange.users.City;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class Controller {

    private static DBController thisController = new DBController();

    public static ModelAndView renderAdvertisement(Request req, Response res){
        List<City> cities = thisController.getCityNames();
        List<Advertisement> advertisements = thisController.getActiveAdvert();
        List<Field> fields = thisController.getFields();
        Map<String, Object> params = new HashMap<>();
        params.put("cities", cities);
        params.put("advertisement", advertisements);
        params.put("fields", fields);
        return new ModelAndView(params, "index");
    }

    public static ModelAndView renderCompanyPage(Request req, Response res) {
        List<Advertisement> advertisements = thisController.getActiveAdvert();
        List<City> cities = thisController.getCityNames();
        List<Field> fields = thisController.getFields();
        Map<String, Object> params = new HashMap<>();
        params.put("cities", cities);
        params.put("advertisement", advertisements);
        params.put("fields", fields);
        return new ModelAndView(params, "companyIndex");
    }





    public static ModelAndView getAdvertWithCity(Request req, Response res){
        String city = req.params("city");
        List<Advertisement> advertisementsWithCity = thisController.getAdvertsWithCities(city);
        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }

    public static ModelAndView renderAdvertisementsByFilter(Request req, Response res){
        DBController dbController = new DBController();
        Map<String, Object> filteredParams = new HashMap<>();

        List<City> cities = thisController.getCityNames();
        filteredParams.put("cities", cities);
        int cityId = Integer.parseInt(req.queryParams("city"));

        City city = thisController.cityById(cityId);
        filteredParams.put("city", city);
        filteredParams.put("advertisement", thisController.getAdvertisementBy(city));
        return new ModelAndView(filteredParams, "index");

    }

    public static ModelAndView getAdvertWithField(Request req, Response res){

        List<Advertisement> advertisementsWithCity = thisController.getAdvertWithField();
        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }


    public static ModelAndView renderNewAdvertisementPage(Request req, Response res){
        Map<String, Object> params = new HashMap<>();
        List<City> cities = thisController.getCityNames();
        List<Field> fields = thisController.getFields();
        params.put("cities", cities);
        params.put("fields", fields);
        return new ModelAndView(params, "advertisement");
    }

    public static ModelAndView registerUser(Request req, Response res) {
        Map<String, Object> params = new HashMap<>();
        if (thisController.addUser(req)) {
            res.redirect("/index");
        }
        params.put("notManagedToRegistrate", true);
        return new ModelAndView(params, "registration");
    }

    public static ModelAndView userLogin(Request req, Response res) {
        Map<String, Object> params = new HashMap<>();
        List<City> cities = thisController.getCityNames();
        params.put("cities", cities);
        params.put("login", true);
        return new ModelAndView(params, "login");
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


    public static ModelAndView makeAdvertisement(Request req, Response res) {

        //int id = (Integer)req.session().attribute("id");
        int id = 1;
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


        if (thisController.createNewAdvertisement(id,title,description,field,city,weeklyCapacity,requestedMoney)){
            res.redirect("index");
        } else {
            res.redirect("404");
        }
        return null;
    }
}