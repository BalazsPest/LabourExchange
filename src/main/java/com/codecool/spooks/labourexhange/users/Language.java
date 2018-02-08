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

    public LanguageLevel getLevel() {
        return level;
    }

    public void setLevel(LanguageLevel level) {
        this.level = level;
    }

    public long getId() {

        return id;
    }

    public void setId(long id) {
        this.id = id;
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
