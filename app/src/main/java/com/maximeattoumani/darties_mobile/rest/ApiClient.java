package com.maximeattoumani.darties_mobile.rest;

import retrofit.RestAdapter;
import retrofit.android.AndroidLog;

/**
 * Created by Maxime ATTOUMANI on 15/11/2016.
 */
public class ApiClient {

    public static ApiInterface getClient() {

        ApiInterface apiService = new RestAdapter.Builder()
                .setEndpoint(ApiInterface.ENDPOINT)
                .setLog(new AndroidLog("retrofit"))
                .setLogLevel(RestAdapter.LogLevel.FULL)
                .build()
                .create(ApiInterface.class);

        return apiService;
    }


}
