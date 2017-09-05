package Dao.entities;


/**
* @generated
*/
public class Anomalies {
    private Integer id;
    private OrderStatus status;
    private String description;
    private Solution solution;
    public static final String SHIPPED="SHIPPED";
    public static final String RECEIVED="RECEIVED";
    public static final String PROCESSING="PROCESSING";
    public static final String DELETED="DELETED";
    public static final String DELIVERING="DELIVERING";
    public static final String MONEYBACK="MONEYBACK";
    public static final String NEGATIVEREVIEW="NEGATIVEREVIEW";
    public static final String BLOCK="BLOCK";
    public static final String REJECT="REJECT";
    
    
    enum OrderStatus{SHIPPED,RECEIVED,PROCESSING,DELETED,DELIVERING};
    enum Solution{MONEYBACK,NEGATIVEREVIEW,BLOCK,REJECT};

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status.toString().toLowerCase(   );
    }

    public void setStatus(String s) {
        this.status = OrderStatus.valueOf(s);
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
        this.solution = Solution.valueOf(s);
    }
}
