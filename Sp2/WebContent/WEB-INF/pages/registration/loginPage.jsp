<html>
    <head>
        <title>Login Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function clearData(){
                document.loginform.username.value="";
                document.loginform.password.value="";
            }


            $(document).ready(function(){
                $('[data-toggle="popover"]').popover();
            });

        </script>
    </head>

    <body>
        <div class="container">
            <table width="95%">
                <tr>
                    <td>
                       <h3><B>Leadership Effectiveness Survey</B></h3>
                    </td>
                    <td align="right">
                        <a href="/feedBackHome/">Back to Home</a>
                    </td>
                </tr>
            </table>
            <div class="col-sm-4 col-md-4">
              <h3>Login to continue</h3>
              <form name="loginForm" method="POST" action="loginForm" autocomplete="off" role="form">
			<!-- 	{% csrf_token %} -->
				<div class="form-group">

                  <input type="text" class="form-control" id="username" name="username"  placeholder="Enter Username" required="true">
                </div>
                <div class="form-group">

                  <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required="true">
                </div>
                <button type="submit" class="btn  btn-primary pull-left" style="width:48%" >Login</button>

                <button type="button" class="btn btn-primary  pull-right" style="width:48%" onclick=clearData()>Reset</button>
                <br><br>
                      <input type="hidden" name="next" value="/manager/"/>
                <a href="#"  data-toggle="popover" data-placement="right" data-trigger="focus" data-content="Contact admin :(Gaurav.2.Singh) GS0072275@TechMahindra.com">Forgot username or password ?</a>
              </form>
              </div>
            </div>
          <br><br><br><br><br><center>&copy;&nbsp;Copyright 2016-2017</center>
    </body>
</html>

