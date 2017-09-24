package Dao.entities;

import java.util.LinkedList;

public class Cart extends IdOwnerComparable{
    private User user;
    private LinkedList<Product> products;

    public Cart(){
        products=new  LinkedList<Product>();
    }
    
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public LinkedList<Product> getProducts() {
        return products;
    }

    public void setProducts(LinkedList<Product> products) {
        this.products = products;
    }
    
    public int countProduct(Product product){
        int res=0;
        for(Product p:products)
            if(p.equals(product))
                res++;
        return res;
    }
}
