<!-- {% load static %} -->

<!doctype html>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>Feedback Page</title>
<link rel="stylesheet"
	href="https://code.getmdl.io/1.2.1/material.teal-red.min.css">
<link rel="stylesheet" href="resources/css/styles.css"></link>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>
<script type="text/javascript">
	function validateForm() {
		var comment = document.forms["team_member_form"]["overallfeedback"].value;
		if (comment.trim().length == 0) {
			alert('Overall feedback is mandatory, you will not be able to submit feedback without giving overall feedback.');
			return false
		} else {
			return true;

		}

	}
</script>
<style>
.card {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 4%
}

.mdl-card {
	width: 100%;
}

.mdl-card__media {
	display: flex;
	align-items: center;
	justify-content: center;
	color: #FFF;
	height: 70px;
	background-color: #4285f4;;
}

.mdl-card__supporting-text {
	width: auto;
}

.mdl-radio {
	margin-left: 5%;
}

.mdl-textfield {
	margin-left: 3%;
	margin-top: 2%;
	width: 80%
}

.question {
	margin-top: 3%;
	margin-left: 3%;
}

.option_op {
	margin-top: 2%;
}

a {
	color: blue;
}

.breadcrumb li {
	display: inline;
}

.breadcrumb li+li:before {
	content: "» ";
}

.mdl-dialog {
	width: 60% !important;
}
</style>
</head>
<body>
	<div
		class="demo-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
		<div class="demo-ribbon"></div>
		<main class="demo-main mdl-layout__content">
		<div class="demo-container mdl-grid">
			<div
				class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
			<div
				class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">

				<ol class="breadcrumb">
					<li><a href="/feedBackHome/">Home</a></li>
					<li class="current">Feedback Page</li>
				</ol>
				<!-- add the manager's name in the feedback page	 -->
				<h3>Leadership Effectiveness Survey - Team Member's Feedback</h3>
				<div class="card">
					<div class="mdl-card mdl-shadow--3dp">

						<div class="mdl-card__supporting-text">
							<h6>
								<b>Concept:</b>
							</h6>
							This surveys purpose is to solicit your feedback for your Team
							Lead's adherence to the expected leadership behaviors
						</div>
					</div>

				</div>


				<div class="card">
					<div class="mdl-card mdl-shadow--3dp">
						<div class="mdl-card__supporting-text">
							<h6>
								<b>How to use it?</b>
							</h6>
							Step 1. Please choose your Team Leader<br> Step 2. Using the
							rating scale below, fill the feedback based on your
							experience/observations
							<h6>
								<b>Using the scale below, rate & choose the occurence of
									each behavior (Sr. Nos. 1 to 8) in the table below: </b>
							</h6>

							<ul>
								<li>5 - Always or most of the times demonstrates this
									behaviour<br>
								</li>
								<li>4 - Frequently demonstrates this behaviour<br></li>
								<li>3 - Occasionally demonstrates this behaviour<br></li>
								<li>2 - Rarely demonstrates this behaviour<br></li>
								<li>1 - Never demonstrates this behaviour</li>
							</ul>
							<br> <br> <br>
						</div>
					</div>

				</div>
				<form:form id="team_member_form" method="POST" autocomplete="off"
					modelAtrribute="feedbackModel" action="feedback">
					<!-- {% csrf_token %} -->
					<form:errors path="*" cssClass="errorblock" element="div" />
					<br>
					<br>
					<h4>Team Member's Feedback</h4>

					<!--for select attaendatnt-->

					<div class="card">
						<div class="mdl-card mdl-shadow--3dp">
							<div class="mdl-card__supporting-text">
								<div class="question">
									<h6>
										<font color="teal"><strong>Select your Team
												Leaders name</strong></font>
									</h6>
								</div>
								<div
									class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
									<select class="mdl-textfield__input" type="text"
										name="feedbackfor"> <!-- {%for o in attendent %} -->
										<option value="{{o.id}}">{{o}}</option> <!-- {% endfor %} -->
									</select>
								</div>
							</div>
						</div>
					</div>
					<!--end for select atatndent-->




					<div class="card">
						<div class="mdl-card mdl-shadow--3dp">
							<div class="mdl-card__supporting-text">
								<!--This is for question 1-->
								<div class="question">
									<h6>
										<font color="teal"><strong>Select the rating
												for your nominated Team Leader against the following:</strong></font>
									</h6>
									<br> <br> A. &nbsp;&nbsp;&nbsp;On a scale of 1 to 5,
									where would you rate your nominated Team Leader on Ownership: <br>
									<br> <b>Descriptors:</b><br> Takes responsibility by:
									<ol>
										<li>Doing complete handover of work<br></li>
										<li>Completing the task assigned on time<br></li>
										<li>Being aware of work status & updating work status to
											stakeholders proactively<br>
										</li>
										<li>Being transparent wth all stakeholders<br></li>
										<li>Proactively owning issues/requirements of
											stakeholders and taking action</li>
									</ol>

									<div class="option_op">
										<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-1" value="1"> <span
											class="mdl-radio__label">1</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-1" value="2"> <span
											class="mdl-radio__label">2</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-1" value="3"> <span
											class="mdl-radio__label">3</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-1" value="4"> <span
											class="mdl-radio__label">4</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-1" value="5" checked> <span
											class="mdl-radio__label">5</span>
										</label>

									</div>
									<div
										class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<textarea class="mdl-textfield__input" type="text" rows="3"
											name="comment1" id="comment1"></textarea>
										<label class="mdl-textfield__label" for="comment1">Comments
											&nbsp;(optional)</label>
									</div>
								</div>

								<!--This is for question 2-->
								<div class="question">
									B. &nbsp;&nbsp;&nbsp;On a scale of 1 to 5, where would you rate
									your nominated Team Leader on Assertiveness: <br> <br>
									<b>Descriptors:</b><br> Demonstrates Assertiveness by:
									<ol>
										<li>Speaking up proactively, clearly & concisely</li>
										<li>Attempting to handle difficult situations with
											stakeholders</li>
									</ol>
									<div class="option_op">

										<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-2" value="1"> <span
											class="mdl-radio__label">1</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-2" value="2"> <span
											class="mdl-radio__label">2</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-2" value="3"> <span
											class="mdl-radio__label">3</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-2" value="4"> <span
											class="mdl-radio__label">4</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-2" value="5" checked> <span
											class="mdl-radio__label">5</span>
										</label>

									</div>
									<div
										class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<textarea class="mdl-textfield__input" type="text" rows="3"
											id="comment2" name="comment2"></textarea>
										<label class="mdl-textfield__label" for="comment2">Comments&nbsp;(optional)</label>
									</div>
								</div>

								<!--This is for question 3-->
								<div class="question">
									C. &nbsp;&nbsp;&nbsp;On a scale of 1 to 5, where would you rate
									your nominated Team Leader on Team/Relationship Management: <br>
									<br> <b>Descriptors:</b><br> Demonstrates
									Team/Relationship Management by:
									<ol>
										<li>Being approachable - listens to the concerns &
											attempts to solve them - Team feels comfortable to express
											their point of view without fear of negative consequences<br>
										</li>
										<li>Asking for ideas & encouraging solutions<br></li>
										<li>Delegating work for teams development - Follows up
											timely for completion of work<br>
										</li>
										<li>Sharing knowledge with the team/upskilling the team<br></li>
										<li>Communicating respectfully - appropriate choice of
											words & tone</li>
										<li>Trying to resolve teams issues</li>
									</ol>
									<div class="option_op">

										<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-3" value="1"> <span
											class="mdl-radio__label">1</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-3" value="2"> <span
											class="mdl-radio__label">2</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-3" value="3"> <span
											class="mdl-radio__label">3</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-3" value="4"> <span
											class="mdl-radio__label">4</span>
										</label> <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect">
											<input type="radio" class="mdl-radio__button"
											name="question-3" value="5" checked> <span
											class="mdl-radio__label">5</span>
										</label>

									</div>
									<div
										class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										<textarea class="mdl-textfield__input" type="text" rows="3"
											id="comment3" name="comment3"></textarea>
										<label class="mdl-textfield__label" for="comment3">Comments&nbsp;(optional)</label>
									</div>
								</div>
								<!--dummy question div-->
								<div class="question"></div>
							</div>
						</div>

					</div>

					<div class="card">
						<div class="mdl-card mdl-shadow--3dp">
							<div class="mdl-card__supporting-text">
								<h6>
									<strong><font color="teal">Overall Feedback</font></strong>
								</h6>
								<div
									class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
									<textarea class="mdl-textfield__input" type="text" rows="3"
										width="100%" name="overallfeedback" id="overallfeedback"></textarea>
									<label class="mdl-textfield__label" for="overallfeedback">overall
										feedback</label>
								</div>
							</div>
						</div>

					</div>

					<center>
						<br>
						<button
							class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"
							style="width: 50%;" type="submit">
							<b>Submit FeedBack</b>
						</button>

					</center>
				</form:form>
			</div>

		</div>

		<center>&copy;&nbsp;Copyright 2016-2017</center>

		</main>
	</div>
</body>
</html>
