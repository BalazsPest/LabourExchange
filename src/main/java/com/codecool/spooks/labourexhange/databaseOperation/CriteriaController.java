package com.codecool.spooks.labourexhange.databaseOperation;

import org.junit.jupiter.api.BeforeEach;

import java.util.List;

public class CriteriaController {

    //kell egy before és egy after a connection nyitás/zárásra
    // constructorban paraméterek emgadása,változók a methodokhoz
    //külön methodok,más-más db feladatokra
    //null-al egyenlővé teszed az objectet és idővel a garbage collector összeszedi

    private String filter;

    private Class filteredClass;


    public CriteriaController(String filter, Class filteredClass) {
        this.filter = filter;
        this.filteredClass = filteredClass;
    }

    @BeforeEach


    public List<Object> filterBy(String filter){
        return null;
    }

    //kell open-close method a connectionnek,egy enum a case-switch-nek

}
