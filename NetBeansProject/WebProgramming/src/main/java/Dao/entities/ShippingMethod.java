/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.entities;

/**
 *
 * @author Alvise
 */
public enum ShippingMethod {
    ONLINE("online"),BOTH("both"),LOCALLY("locally");
    
    ShippingMethod value;
    ShippingMethod(String s){
        value=valueOf(s);
    }
}
