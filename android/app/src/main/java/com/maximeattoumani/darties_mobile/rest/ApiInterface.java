package com.maximeattoumani.darties_mobile.rest;

import com.maximeattoumani.darties_mobile.model.User;

import java.util.List;

import retrofit.Callback;
import retrofit.http.GET;
import retrofit.http.Path;

/**
 * Created by Maxime ATTOUMANI on 15/11/2016.
 */
public interface ApiInterface {

    //A modifier selon le host associer a votre pc
public static final String ENDPOINT = "http://192.168.43.233/melvin/private_html";

    @GET("/apiCall.php/login/{mail}&{password}")
    void listApiAsync(@Path("mail")String mail,
                      @Path("password")String password,
                      Callback<List<User>> callback);

    @GET("/apiCall.php/getUser/{token}")
    void listUserAsync(@Path("token")String token,
                       Callback<List<User>> callback);

}
