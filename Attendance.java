package comccc.example.user.linkadhaar;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Attendance extends AppCompatActivity {

    private static final String REGISTER_URL = "http://192.168.1.22/nitteproject/attendance.php";
    public static ArrayList<Attendance_details> detaillist = new ArrayList<Attendance_details>();
    public static Attendance_details table1;
    ListView listview;
    String header;
    TextView text1,text2,text3,text6,text5;
    Attendance_adapter adapter;
    ImageView left;
    String sem;


   // String semester[]={"1","2","3","4","5","6"};
    Spinner spin;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_attendance);
        getSupportActionBar().hide();
        spin=(Spinner)findViewById(R.id.spinner);
        left=(ImageView)findViewById(R.id.back);
       // Bundle value = getIntent().getExtras();
        //String header =  value.getString("semester");
         sem=getIntent().getExtras().getString("semester");
         attendance();
     // Toast.makeText(getApplicationContext(),sem,Toast.LENGTH_SHORT).show();
        left.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i =new Intent(Attendance.this,Second.class);
                startActivity(i);
            }
        });


       /* SpinnerAdapter customAdapter1=new SpinnerAdapter(getApplicationContext(), semester);
        spin.setAdapter(customAdapter1);
        spin.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id)
            {
                 sem= Integer.parseInt(semester[position]);

               // Toast.makeText(getApplicationContext(),spp,Toast.LENGTH_SHORT).show();
                attendance();

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });*/

        //String susn=MainActivity.usn;
       // Toast.makeText(getApplicationContext(),susn,Toast.LENGTH_SHORT).show();

    }



    private void attendance() {


        final ProgressDialog loading = ProgressDialog.show(this, "Uploading", "Please wait", false, false);
        StringRequest stringRequest = new StringRequest(Request.Method.POST, REGISTER_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        loading.dismiss();
                        detaillist.clear();
                        JSONObject jsonResponse;
                        try {
                            jsonResponse = new JSONObject(response);
                            JSONArray jsonArray = jsonResponse.getJSONArray("products");
                            for (int t = 0; t < jsonArray.length(); t++) {
                                JSONObject object = jsonArray.getJSONObject(t);
                                Attendance_details table1 = new Attendance_details();
                                //table1.setSubject(object.get("id"));

                                table1.setAttendence_id(object.getInt("attendence_id"));
                                table1.setSusn(object.getString("susn"));
                                table1.setSsemster(object.getString("ssemster"));
                                table1.setSubject(object.getString("subject"));
                                table1.setTperiods(object.getInt("tperiods"));
                                table1.setTpresents(object.getInt("tpresents"));
                                table1.setPercentage(object.getDouble("percentage"));





                            }

                        } catch (JSONException e) {

                        }
                        listview=(ListView)findViewById(R.id.list);
                        adapter=new Attendance_adapter(Attendance.this);
                        listview.setAdapter(adapter);

                    }
                },
                new Response.ErrorListener() {


                    @Override
                    public void onErrorResponse(VolleyError error) {
                        loading.dismiss();
                        Toast.makeText(Attendance.this, error.toString(), Toast.LENGTH_LONG).show();
                    }
                }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<String, String>();
                params.put("usn",MainActivity.usn );
                params.put("semester",sem);

                return params;
            }
        };

        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);
    }

   /* @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == android.view.KeyEvent.KEYCODE_BACK) {
            Intent intent = new Intent(Attendance.this, Attendance.class);
            startActivity(intent);
            return true;
        }
        return false;
    }

*/
}

