package Dao.entities;


/**
* @generated
*/
public class Anomalies extends IdOwnerComparable{
    private String status;
    private String description;
    private String solution;

    public String getStatus() {
        return status.toString().toLowerCase(   );
    }

    public void setStatus(String s) {
        this.status = String.valueOf(s);
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSolution() {
        return solution.toString().toLowerCase();
    }

    public void setSolution(String s) {
        this.solution = String.valueOf(s);
    }
}
