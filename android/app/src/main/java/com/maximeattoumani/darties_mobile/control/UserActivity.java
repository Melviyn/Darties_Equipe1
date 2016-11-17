package com.maximeattoumani.darties_mobile.control;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.maximeattoumani.darties_mobile.R;
import com.maximeattoumani.darties_mobile.model.SessionManager;
import com.maximeattoumani.darties_mobile.model.User;
import com.maximeattoumani.darties_mobile.rest.ApiClient;
import com.maximeattoumani.darties_mobile.rest.ApiInterface;

import java.util.HashMap;
import java.util.List;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

/**
 * Created by Maxime ATTOUMANI on 16/11/2016.
 */
public class UserActivity extends AppCompatActivity {

    private SessionManager session;
    private TextView id;
    private TextView nom;
    private TextView prenom;
    private String api;
    private Button logout;
    private ApiInterface apiService;

    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.user_layout);

        id = (TextView) findViewById(R.id.id);
        nom = (TextView) findViewById(R.id.nom);
        prenom = (TextView) findViewById(R.id.prenom);
        logout = (Button) findViewById(R.id.deco);

        session = new SessionManager(getApplicationContext());

        session.checkLogin();

        HashMap<String,String> user = session.getAPI();

        api = user.get(SessionManager.KEY_API);

        apiService = ApiClient.getClient();

        final ProgressDialog ringProgressDialog = ProgressDialog.show(UserActivity.this, "Veuillez patienter", "Récupération ...", true);
        ringProgressDialog.setCancelable(true);
        new Thread(new Runnable() {
            @Override
            public void run() {
                apiService.listUserAsync(api, new Callback<List<User>>() {
                    @Override
                    public void success(List<User> users, Response response) {
                        if (response.getStatus() == 200) {
                            if(users!= null){
                                User user = users.get(0);
                                if(api.equals(user.getApi_key())) {
                                    id.setText(Html.fromHtml("Id : <b>" + user.getId_profil() + "</b>"));
                                    nom.setText(Html.fromHtml("Nom : <b>" + user.getNom() + "</b>"));
                                    prenom.setText(Html.fromHtml("Prénom : <b>" + user.getPrenom() + "</b>"));
                                }
                                else {
                                    Toast.makeText(UserActivity.this, "Aucune réponse obtenu, page vide", Toast.LENGTH_LONG).show();
                                }
                            }

                        }
                    }

                    @Override
                    public void failure(RetrofitError error) {
                        Log.d("Error", error.getMessage());
                        Toast.makeText(UserActivity.this, "Impossible de récuperer les informations", Toast.LENGTH_LONG).show();
                    }
                });

                try {
                    Thread.sleep(2000);
                } catch (Exception e) {
                }
                ringProgressDialog.dismiss();
            }
        }).start();




        logout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                session.logoutUser();
            }
        });

    }
}
