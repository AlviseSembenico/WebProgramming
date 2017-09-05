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
public enum OrderStatus{
    SHIPPED("shipped"),
    RECEIVED("received"),PROCESSING("processing"),DELETED("deleted"),DELIVERING("delivering");
    
    private OrderStatus value;
    OrderStatus(String s){
        value=valueOf(s);
    }

    public OrderStatus getValue() {
        return value;
    }

    public void setValue(OrderStatus value) {
        this.value = value;
    }
};

