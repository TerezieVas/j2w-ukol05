package cz.czechitas.java2webapps.ukol5.controller;

public enum Gender {
    Female("female"),
    Male("male"),
    Unknown("unknown")
            ;

    private final String pohlavi;

    Gender(String title) {
        this.pohlavi = title;
    }

    public String getTitle() {
        return pohlavi;
    }

}
