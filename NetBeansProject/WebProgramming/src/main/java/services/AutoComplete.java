/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import Dao.ProductDao;
import Dao.entities.Product;
import Dao.jdbc.JdbcProductDao;
import java.math.BigDecimal;
import java.util.LinkedList;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import javax.json.*;
import javax.ws.rs.QueryParam;

/**
 * REST Web Service
 *
 * @author Alvise
 */
@Path("complete")
public class AutoComplete {

    @Context
    private UriInfo context;
    private ProductDao productDao;
    /**
     * Creates a new instance of GenericResource
     */
    public AutoComplete() {
        productDao=new JdbcProductDao();
    }

    
    /**
     *
     * @param name
     * @return
     * @throws Exception
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getJson(@QueryParam("name") String name) throws Exception{
        LinkedList<Product> ll=productDao.getCompleteName(name);
        JsonObjectBuilder j=Json.createObjectBuilder();
        JsonArrayBuilder ar=Json.createArrayBuilder();
        ll.forEach((product)->{
            ar.add(product.getName());
        });
        j.add("names", ar);
        return j.build().toString();
    }
    
}
