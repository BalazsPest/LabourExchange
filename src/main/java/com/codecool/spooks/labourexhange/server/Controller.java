package com.codecool.spooks.labourexhange.server;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.databaseOperation.DBController;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Language;
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
        thisController.populateDb();

        List<Advertisement> advertisements = thisController.getActiveAdvert();

        Map<String, Object> params = new HashMap<>();
        params.put("cities", cities);
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
    public static ModelAndView renderAdvertisementsByFilter(Request req, Response res){
        thisController.populateDb();
        DBController dbController = new DBController();
        Map<String, Object> filteredParams = new HashMap<>();


        List<City> cities = thisController.getCityNames();
        filteredParams.put("cities", cities);
        int cityId = Integer.parseInt(req.queryParams("city"));

        City city = thisController.cityById(cityId);
        filteredParams.put("city", city);
        filteredParams.put("advertisement", dbController.getAdvertisementBy(city));

        return new ModelAndView(filteredParams, "index");

    }

    public static ModelAndView getAdvertWithField(Request req, Response res){

        thisController.populateDb();
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


}