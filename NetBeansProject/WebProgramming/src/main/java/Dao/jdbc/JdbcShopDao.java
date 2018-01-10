/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.*;
import Dao.entities.Review;
import Dao.entities.Shop;
import Dao.entities.User;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alvise
 */
public class JdbcShopDao extends JdbcUtilities implements ShopDao {

    HashMap<String, String> map;
    private String tableName = "shops";

    public JdbcShopDao() {
        map = new HashMap<String, String>();
        map.put("owner", "owner_id");
        map.put("creator", "owner_id");
    }

    @Override
    public Shop getShopById(int id) throws Exception {
        HashMap<Object, String> mappa = new HashMap<>();
        mappa.put(id, "id");
        Shop res = (Shop) super.getObject(Shop.class, map, tableName, mappa, null).get(0);
        return res;
    }

    @Override
    public Shop getShopByName(String name) throws Exception {
        HashMap<Object, String> mappa = new HashMap<Object, String>();
        mappa.put(name, "name");
        Shop res = (Shop) super.getObject(Shop.class, map, tableName, mappa, null).get(0);
        return res;
    }

    @Override
    public Shop getShopByOwner(User owner) throws Exception {
        HashMap<Object, String> mappa = new HashMap<Object, String>();
        mappa.put(owner.getId(), "owner_id");
        Shop res = (Shop) super.getObject(Shop.class, map, tableName, mappa, null).get(0);
        return res;
    }

    @Override
    public int insertDao(Object o) throws SQLException {
        return super.insertDao(o, map, tableName, null);
    }

    @Override
    public int deleteDao(Object o) throws SQLException {
        return super.deleteDao(o, map, tableName, 0);
    }

    @Override
    public int updateDao(IdOwner o) throws SQLException {
        return super.updateDao(o, map, tableName, null);
    }

    @Override
    public Object getById(int id) {
        try {
            return getShopById(id);
        } catch (Exception ex) {
            Logger.getLogger(JdbcShopDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public int getShopGlobalValue(int id) {
        if (!checkConnection()) {
            return 0;
        }
        ResultSet set;
        int res = 0;
        double h;
        try {
            String query = "select (shops.global_value/sum(products.numberPeople)) as star from shops join products on shops.id = products.shops_id where shops.id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id);
            set = stmt.executeQuery();
            set.first();
            h = set.getDouble("star");
            res = (int) h;
        } catch (SQLException ex) {
            Logger.getLogger(JdbcProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return res;
    }

}
