package com.maximeattoumani.darties_mobile.control;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.maximeattoumani.darties_mobile.R;
import com.maximeattoumani.darties_mobile.model.SessionManager;
import com.maximeattoumani.darties_mobile.model.User;
import com.maximeattoumani.darties_mobile.rest.ApiClient;
import com.maximeattoumani.darties_mobile.rest.ApiInterface;

import java.util.List;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

public class MainActivity extends AppCompatActivity {

    private EditText email;
    private EditText password;
    private Button connexion;
    private SessionManager session;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        email = (EditText) findViewById(R.id.email);
        password = (EditText) findViewById(R.id.password);
        connexion = (Button) findViewById(R.id.connexion);

        connexion.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String mail = email.getText().toString();
                String pwd = password.getText().toString();

                if(mail.trim().length() > 0 && pwd.trim().length() > 0) {

                    if(!mail.equals("") && !password.equals("")){

                        ApiInterface apiService = ApiClient.getClient();
                        session = new SessionManager(getApplicationContext());
                        apiService.listApiAsync(mail, pwd, new Callback<List<User>>() {
                            @Override
                            public void success(List<User> users, Response response) {
                                if (response.getStatus() == 200) {
                                    if (users != null) {
                                        User user = users.get(0);
                                        session.createLoginSession(user.getApi_key());
                                        Intent i = new Intent(getApplicationContext(), UserActivity.class);
                                        startActivity(i);
                                        finish();
                                    }
                                }
                            }

                            @Override
                            public void failure(RetrofitError error) {

                                Log.d("Error", error.getMessage());
                                Toast.makeText(MainActivity.this, "Impossible de récuperer les informations, ERREUR "+error.getResponse().getStatus(), Toast.LENGTH_LONG).show();
                            }

                        });


                    }
                    else {
                        Toast.makeText(MainActivity.this, "Entrez un mdp/email", Toast.LENGTH_LONG).show();
                    }
                }
                else{

                    Toast.makeText(MainActivity.this, "mdp/email vide", Toast.LENGTH_LONG).show();
                }

            }
        });

    }
}


