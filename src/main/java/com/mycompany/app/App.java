package com.mycompany.app;

/**
 * Hello world!
 */
public class App
{

    private final String message = "This is Maven built Jar through Jenkins Job - Meant to be deployed to user selected VM";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
