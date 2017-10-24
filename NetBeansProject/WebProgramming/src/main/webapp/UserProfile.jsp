<%@page import="Dao.entities.User"%>
<%@page import="Dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="userDao" value="${pageContext.servletContext.getAttribute('userDao')}"></c:set>
<c:set var="user" value="${userDao.getById(param.id)}"></c:set>

    <!DOCTYPE html>
    <!doctype html>
    <html>
    <c:import url="pageBuilder/header.jsp"/>
    
    <body class="profile-page" waid71fa0d88-5390-4b5b-a2f4-e45fa93d85e2="SA password protect entry checker">
        <div class="page-header header-filter" data-parallax="true" style="background-image: url(https://www.consumatori.it/wp-content/uploads/2015/09/venditore_consumatore_stretta-di-mano1.jpg); transform: translate3d(0px, 0px, 0px);">
        </div>
        <div class="main main-raised">
            <div class="profile-content">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-6 col-xs-offset-3">
                            <div class="profile">
                                <div class="avatar">
                                    <img src="<c:out value="${user.getAvatarPath()}"/>" alt="Circle Image" class="img-circle img-responsive img-raised">
                                </div>
                                <div class="name">
                                    <h3 class="title"><c:out value="${user.getFirstName()} ${user.getLastName()}"/></h3>                                    
                                </div>
                            </div>
                        </div>                        
                    </div>                    
                    <div class="row-content">
                        <div class="col-md-10 col-md-offset-1" >                      
                            <form class="form" method="POST" action="ModifyServlet">                                
                                    <div class="card-content">
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">face</i>
                                                    </span>
                                                <div class="form-group is-empty"><input id="fn" name="firstname" type="text" class="form-control" placeholder="First Name" value="${user.getFirstName()}"><span class="material-input"></span></div>
                                            </div>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">face</i>
                                                    </span>
                                                    <div class="form-group is-empty"><input id="ln" name="lastname" type="text" class="form-control" placeholder="Last Name" value="${user.getLastName()}"><span class="material-input"></span></div>
                                            </div>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">email</i>
                                                    </span>
                                                <div class="form-group is-empty"><input id="ml" name="email" type="text" class="form-control" placeholder="Email" value="${user.getEmail()}"><span class="material-input"></span></div>
                                            </div>
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">lock_outline</i>
                                                    </span>
                                                <div class="form-group is-empty">
                                                    <input id="pw" name="password" type="Password" class="form-control" placeholder="Password" readonly="readonly" value="${user.getPassword()}">
                                                    <span class="material-input"></span>                                                    
                                                </div>                                                
                                            </div>
                                                <script text="javascript">
                                                    function Popup()
                                                    {
                                                       document.getElementById('cambiapw').style.display = "block";
                                                       document.getElementById('fn').setAttribute('disabled','disabled');
                                                       document.getElementById('ln').setAttribute('disabled','disabled');
                                                       document.getElementById('ml').setAttribute('disabled','disabled');
                                                       document.getElementById('pw').setAttribute('disabled','disabled');
                                                    }
                                                    function Cancel()
                                                    {
                                                        document.getElementById('cambiapw').style.display = "none";
                                                        document.getElementById('old').value = "";
                                                        document.getElementById('new').value = "";
                                                        document.getElementById('confirm').value = "";
                                                        document.getElementById('fn').removeAttribute('disabled');
                                                        document.getElementById('ln').removeAttribute('disabled');
                                                        document.getElementById('ml').removeAttribute('disabled');
                                                        document.getElementById('pw').removeAttribute('disabled');
                                                    }
                                                    function Change()
                                                    {                                                         
                                                        var old = document.getElementById('old').value
                                                        var nw = document.getElementById('new').value;
                                                        var confirm = document.getElementById('confirm').value;
                                                        var paswd = document.getElementById('pw').value
                                                        alert(paswd);
                                                        
                                                        if(old == "" || nw == "" ||confirm == "")
                                                        {
                                                            alert("Some fields are empty")
                                                        }
                                                        else
                                                        {
                                                            if(old != paswd)
                                                            {
                                                                alert("The old password is wrong");
                                                            }
                                                            else
                                                            {
                                                                if(nw != confirm)
                                                                    alert("Wrong confirm password")
                                                                else
                                                                {
                                                                    ${user.setPassword(nw)}
                                                                    document.getElementById('pw').value = nw;
                                                                    Cancel();
                                                                }
                                                            }
                                                        }
                                                        
                                                    }
                                                </script>
                                            <input type="button" class="btn btn-primary btn-round" value="Change Password" onclick="Popup()"/>
                                            
                                    </div>                                                                    
                                    <div class="footer text-center">
                                        <input type="submit" class="btn btn-primary btn-round" value="Submit"/>                                        
                                    </div>
                                                                        
                                </form>                                
                        </div>  
                        <div id="cambiapw" style="width:100%;height:100%;top:30%;left:0;display:none;position:fixed;overflow:auto">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="card card-content" style="background-color: lightgrey">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div id="popupContact">
                                            <form acton="#" id="form" method="post" name="pop">
                                                <h2>Change Password</h2>
                                                <input id="old" type="Password" class="form-control" placeholder="Old Password">
                                                <input id="new" type="Password" class="form-control" placeholder="New Password">
                                                <input id="confirm" type="Password" class="form-control" placeholder="Confirm New Password">
                                                <div class="row">                                                                    
                                                    <input type="button" class="btn btn-round" onclick="Change()" value="Change"/>
                                                    <input type="button" class="btn btn-round" onclick="Cancel()" value="Cancel"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    <body/>
    <c:import url="pageBuilder/footer.jsp"/>
    <html/>
        