<%@page import="Dao.entities.User"%>
<%@page import="Dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<!doctype html>
<html>
    <c:import url="../pageBuilder/header.jsp"/>

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
                                    <img src="<c:choose><c:when test="${user.getAvatarPath() != null}"><c:out value="${user.getAvatarPath()}"/></c:when><c:otherwise><c:out value="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"/></c:otherwise></c:choose>" alt="Circle Image" class="img-circle img-responsive img-raised">
                                        </div>
                                        <div class="name">
                                                <h3 class="title"><c:out value="${user.getFirstName()} ${user.getLastName()}"/></h3>                                    
                                </div>
                            </div>
                        </div>                        
                    </div>                    
                    <div class="row-content">
                        <div class="col-md-10 col-md-offset-1" >                      
                            <form class="form" method="POST" action="userProfile">                                     
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
                                    <script text="javascript">
                                        function Popup()
                                        {
                                            $("#cambiapw").modal("show");
                                        }

                                    </script>
                                    <input type="button" class="btn btn-primary btn-round" value="Change Password" onclick="Popup()"/>

                                </div>                                                                    
                                <div class="footer text-center">
                                    <input type="submit" class="btn btn-primary btn-round" value="Submit"/>                                        
                                </div>                                                                        
                            </form> 


                        </div>                         
                    </div>                    
                </div>                
            </div>
        </div>
        <div class="modal fade" id="cambiapw" tabindex="-1" role="dialog" aria-labelledby="changepw" aria-hidden="true" data-toggle="modal" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <form acton="userProfile" id="form" method="post" name="pop">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <i class="material-icons">clear</i>
                            </button>
                            <h4 class="modal-title">Change Password</h4>
                        </div>
                        <div class="modal-body">

                            <input name="oldPw" type="Password" class="form-control" placeholder="Old Password">
                            <input name="newPw" type="Password" class="form-control" placeholder="New Password">
                            <input name="confirmNewPw" type="Password" class="form-control" placeholder="Confirm New Password">

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary btn-simple"  value="submit"/>
                            <button type="button" class="btn btn-danger btn-simple" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <body/>
    <c:import url="../pageBuilder/footer.jsp"/>
    <c:if test="${!(empty param.result) && param.result eq 'true'}">
        <script>
            $(document).ready(function () {
                $("#successModal").modal("show");
            });
        </script>
    </c:if>
    <c:if test="${!(empty param.result) && param.result eq 'false'}">
        <script>
            $(document).ready(function () {
                $("#errorModal").modal("show");
            });
        </script>
    </c:if>
