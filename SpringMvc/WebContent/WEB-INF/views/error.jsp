{% load static %}
<!doctype html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Error Page</title>
    <link rel="stylesheet" href="https://code.getmdl.io/1.2.1/material.teal-red.min.css">
     <link rel="stylesheet" href="{% static 'styles.css' %}"></link>
	<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>
    <style>
			.card{
				display: flex;
				align-items: center;
				justify-content: center;
				margin-top: 4%
			}

			.mdl-card {
			  width: 100%;
			}

			.mdl-card__media{
				display: flex;
				align-items: center;
				justify-content: center;
				color:#FFF;
				height: 70px;
				background-color: #4285f4;;
			}

			.mdl-card__supporting-text{
				width:auto;
			}


			.mdl-button{
				margin-top: 2%;
				width:50%;
			}

			a{
				color:blue;
			}
			.breadcrumb li {
                    display: inline;
            }

            .breadcrumb li+li:before {
                     content:"» ";
            }
    </style>
  </head>
  <body>
    <div class="demo-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
      <div class="demo-ribbon"></div>
      <main class="demo-main mdl-layout__content">
        <div class="demo-container mdl-grid">
          <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
          <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
                <ol class="breadcrumb">
                    <li><a href="/feedBackHome/">Home</a></li>
                    <li><a href="/teamMember/">TeamMember's Feedback</a></li>
                    <li class="current">TeamMember's FeedBack error</li>
                </ol>
			  <h3>Leadership Effectiveness Survey  - Leadership Essentials (for Team Leads)y</h3>

					  <div class="mdl-card__supporting-text">
						<h6><b>Sorry Error occured try again !</b></h6>
						<ul>
						    <li><a href="/feedBackHome/">Click here to go home.</a></li>
						     <li><a href="/teamMember/">Click here to try again.</a></li>
						</ul>

					  </div>



			</div>
		</div>

			  <center>&copy;&nbsp;Copyright 2016-2017</center>

      </main>
    </div>
  </div>
  </body>
</html>
