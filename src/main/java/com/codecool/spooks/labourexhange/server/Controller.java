package com.codecool.spooks.labourexhange.server;

import com.codecool.spooks.labourexhange.adverts.Advertisement;
import com.codecool.spooks.labourexhange.adverts.category.Field;
import com.codecool.spooks.labourexhange.databaseOperation.CriteriaController;
import com.codecool.spooks.labourexhange.databaseOperation.DBController;
import com.codecool.spooks.labourexhange.users.City;
import com.codecool.spooks.labourexhange.users.Language;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import static spark.Spark.redirect;


public class Controller {

    private static DBController thisController = new DBController();
    //ezt szedtem ki most ideiglenesen
    //private static CriteriaController criteriaController = new CriteriaController();


    public static ModelAndView renderAdvertisement(Request req, Response res){
        //itt volt használva
        //List<Advertisement> advertisements = criteriaController.getActiveAdvert();
        //és ide kellett megírnom egy getAdvertset, mert az eltűnt
        List<Advertisement> advertisements = thisController.getAdverts();
        Map<String, Object> params = new HashMap<>();
        //params.put("cities", cities);
        params.put("advertisement", advertisements);
        System.out.println(params);
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
}