package comccc.example.user.linkadhaar;

/**
 * Created by USER on 23-09-2017.
 */

public class Attendance_details  {

    int attendence_id;
    String susn;
    String ssemster;
    String subject;
    int tpresents;
    int tperiods;
    double percentage;




    public Attendance_details() {


    }



  
    public void setTpresents(int tpresents) {
        this.tpresents = tpresents;
    }

    public void setTperiods(int tperiods) {
        this.tperiods = tperiods;
    }

    public void setPercentage(double percentage) {
        this.percentage = percentage;
    }

    public int getTpresents() {
        return tpresents;
    }

    public int getTperiods() {
        return tperiods;
    }

    public double getPercentage() {
        return percentage;
    }

    public int getAttendence_id() {
        return attendence_id;
    }

    public String getSusn() {
        return susn;
    }

    public String getSsemster() {
        return ssemster;
    }

    public String getSubject() {
        return subject;
    }



    public void setAttendence_id(int attendence_id) {
        this.attendence_id = attendence_id;
    }

    public void setSusn(String susn) {
        this.susn = susn;
    }

    public void setSsemster(String ssemster) {
        this.ssemster = ssemster;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }


}

