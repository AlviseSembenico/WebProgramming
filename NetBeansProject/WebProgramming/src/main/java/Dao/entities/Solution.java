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
public enum Solution {
    MONEYBACK("moneyback"),NEGATIVEREVIEW("negativereview"),BLOCK("block"),REJECT("reject");
    
    Solution value;
    Solution(String s){
        value=valueOf(s);
    }
}
