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

public class Controller {

    private static DBController thisController = new DBController();


    public static ModelAndView renderAdvertisement(Request req, Response res){

        thisController.populateDb();

        List<Advertisement> advertisements = thisController.getActiveAdvert();

        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisements);
        return new ModelAndView(params, "index");
    }

    public static ModelAndView getAdvertWithCity(Request req, Response res){

        thisController.populateDb();
        List<Advertisement> advertisementsWithCity = thisController.getAdvertsWithCities();



        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }

    public static ModelAndView getAdvertWithField(Request req, Response res){

        thisController.populateDb();
        List<Advertisement> advertisementsWithCity = thisController.getAdvertWithField();



        Map<String, Object> params = new HashMap<>();
        params.put("advertisement", advertisementsWithCity);
        return new ModelAndView(params, "index");
    }










}
