package com.codecool.spooks.labourexhange.users;

import javax.persistence.*;

@Entity
@Table(name="SPOKEN_LANGUAGES")
public class Language {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "language")
    private String name;

    private LanguageLevel level;

    public Language() {}

    public Language(String name, LanguageLevel level) {
        this.name = name;
        this.level = level;
    }

    @Override
    public String toString() {
        return "Language{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", level=" + level +
                '}';
    }

    public enum LanguageLevel {
        BASIC,
        INTERMEDIATE,
        HIGH;
    }
}
