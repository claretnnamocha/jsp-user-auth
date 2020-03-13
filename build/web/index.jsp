<%@page contentType="text/html" import="java.sql.*"%>
<%if (request.getParameter("btn") != null) {
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
        PreparedStatement ps = c.prepareStatement("SELECT * FROM `user` WHERE username = ? and password = ?");

        ps.setString(1, request.getParameter("userEmail"));
        ps.setString(2, request.getParameter("userPass"));
        ResultSet rs = ps.executeQuery();
        if (!rs.next()) {
            out.print("Login Failed!!");
        } else {
            out.print("Login Successful");
        }
}%>
<!DOCTYPE hdl>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/hdl;charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="author" content="Romes" />
        <meta name="keywords" content="Jamb Practico" />
        <meta name="description" content="Jamb Practico" />
        <title>
            Simple JSP Login
        </title>
        <link
            rel="shortcut icon"
            href="./static/img/favicon.png"
            type="image/x-icon"
            />
        <link rel="apple-touch-icon" href="./static/img/favicon.png" />
        <link rel="stylesheet" href="./static/css/bootstrap.min.css" />
        <link
            href="./static/font/ionicons/css/ionicons.min.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="./static/css/main.min.css" />
    </head>

    <body>
        <div
            class="wrapper wrapper-bg bg-fullscreen d-flex justify-centent-center align-items-center"
            >
            <div class="d-bg-img">
                <div class="row py-2 w-100">
                    <div class="col-12 col-sm-8 col-md-6 col-lg-4 m-auto">
                        <div class="d-box rounded">
                            <div
                                class="d-box-back d-flex justify-content-start align-items-center"
                                >
                            </div>
                            <h4
                                class="d-box-header d-box-header__title text-center border-bottom mb-3 pb-3 d-black-50"
                                >
                                Login
                            </h4>
                            <div class="d-box-body">
                                <form method="post" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="userEmail">Email:</label>
                                        <div class="input-group clearfix">
                                            <div class="input-group-prepend">
                                                <div 
                                                    class="input-group-text bg-success text-white p-0 px-2"
                                                    >
                                                    <i class="icon ion-ios-at-outline icon-x icon-w"></i>
                                                </div>
                                            </div>
                                            <input
                                                type="email"
                                                class="form-control"
                                                name="userEmail"
                                                id="userEmail"
                                                placeholder="Email"
                                                />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="userEmail">Password:</label>
                                        <div class="input-group clearfix">
                                            <div class="input-group-prepend">
                                                <div
                                                    class="input-group-text bg-success text-white p-0 px-2"
                                                    >
                                                    <i
                                                        class="icon ion-ios-unlock-outline icon-x icon-w"
                                                        ></i>
                                                </div>
                                            </div>
                                            <label for="userAddress" class="sr-only">Password</label>
                                            <input
                                                type="password"
                                                name="userPass"
                                                id="userPass"
                                                class="form-control"
                                                placeholder="Password"
                                                />
                                        </div>
                                    </div>
                                    <div class="form-group text-center mt-4">
                                        <button
                                            type="submit"
                                            class="btn btn-lg btn-block btn-success"
                                            name="btn"
                                            >
                                            Login
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="./static/js/jquery-3.4.1.min.js"></script>
        <script src="./static/js/bootstrap.bundle.min.js"></script>
        <script src="./static/js/main.min.js"></script>
    </body>
</html>
