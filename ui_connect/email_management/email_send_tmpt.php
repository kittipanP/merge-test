<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><style>
html,body,h1,h2,h3,h4,h5 {font-family: "RobotoDraft", "Roboto", sans-serif;}
.w3-sidenav a {padding:16px;}
</style>
<body>

<!-- Side Navigation -->
<nav class="w3-sidenav w3-collapse w3-white w3-animate-left w3-card-2" style="z-index:3;width:320px;" id="mySidenav">
  <a href="javascript:void(0)" class="w3-border-bottom w3-large"><img src="http://www.w3schools.com/images/w3schools.png" style="width:60%;"></a>
  <a href="javascript:void(0)" onclick="w3_close()" title="Close Sidemenu" 
  class="w3-hide-large w3-closenav w3-large">Close <i class="fa fa-remove"></i></a>
  <a href="javascript:void(0)" class="w3-dark-grey w3-btn w3-hover-black w3-left-align" onclick="document.getElementById('id01').style.display='block'">New Message <i class="w3-padding-left fa fa-pencil"></i></a>
  <div class="w3-accordion">
    <a id="myBtn" onclick="myFunc('Demo1')" href="javascript:void(0)"><i class="fa fa-inbox w3-padding-right"></i>Inbox (3)<i class="w3-padding-left fa fa-caret-down"></i></a>
    <div id="Demo1" class="w3-accordion-content w3-animate-left">
      <a href="javascript:void(0)" class="w3-border-bottom test w3-hover-light-grey" onclick="openMail('Borge');w3_close();" id="firstTab">
        <div class="w3-container">
          <img class="w3-round w3-margin-right" src="/w3images/avatar3.png" style="width:15%;"><span class="w3-opacity w3-large">Borge Refsnes</span>
          <h6>Subject: Remember Me</h6>
          <p>Hello, i just wanted to let you know that i'll be home at...</p>
        </div>
      </a>
       <a href="javascript:void(0)" class="w3-border-bottom test w3-hover-light-grey" onclick="openMail('Jane');w3_close();">
        <div class="w3-container">
          <img class="w3-round w3-margin-right" src="/w3images/avatar5.png" style="width:15%;"><span class="w3-opacity w3-large">Jane Doe</span>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
        </div>
      </a>
      <a href="javascript:void(0)" class="w3-border-bottom test w3-hover-light-grey" onclick="openMail('John');w3_close();">
        <div class="w3-container">
          <img class="w3-round w3-margin-right" src="/w3images/avatar2.png" style="width:15%;"><span class="w3-opacity w3-large">John Doe</span>
          <p>Welcome!</p>
        </div>
      </a>
    </div>
  </div>
  <a href="javascript:void(0)"><i class="fa fa-paper-plane w3-padding-right"></i>Sent</a>
  <a href="javascript:void(0)"><i class="fa fa-hourglass-end w3-padding-right"></i>Drafts</a>
  <a href="javascript:void(0)"><i class="fa fa-trash w3-padding-right"></i>Trash</a>
</nav>

<!-- Modal that pops up when you click on "New Message" -->
<div id="id01" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-red">
       <span onclick="document.getElementById('id01').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
      <h2>Send Mail</h2>
    </div>
    <div class="w3-panel">
      <label>To</label>
      <input class="w3-input w3-border w3-hover-shadow w3-margin-bottom" type="text">
      <label>From</label>
      <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" type="text">
      <label>Subject</label>
      <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" type="text">
      <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" style="height:150px" placeholder="What's on your mind?">
      <div class="w3-section">
        <a class="w3-btn w3-red" onclick="document.getElementById('id01').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
        <a class="w3-btn w3-right w3-light-grey" onclick="document.getElementById('id01').style.display='none'">Send  <i class="fa fa-paper-plane"></i></a> 
      </div>    
    </div>
  </div>
</div>

<!-- Overlay effect when opening the side navigation on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="Close Sidemenu" id="myOverlay"></div>

<!-- Page content -->
<div class="w3-main" style="margin-left:320px;">
<i class="fa fa-bars w3-opennav w3-hide-large w3-xlarge w3-margin-left w3-margin-top" onclick="w3_open()"></i>
<a href="javascript:void(0)" class="w3-hide-large w3-red w3-btn w3-right w3-margin-top w3-margin-right" onclick="document.getElementById('id01').style.display='block'"><i class="fa fa-pencil"></i></a>

<div id="Borge" class="w3-container person">
  <br>
  <img class="w3-round  w3-animate-top" src="/w3images/avatar3.png" style="width:20%;">
  <h5 class="w3-opacity">Subject: Remember Me</h5>
  <h4><i class="fa fa-clock-o"></i> From Borge Refsnes, Sep 27, 2015.</h4>
  <a class="w3-btn w3-light-grey">Reply<i class="w3-padding-left fa fa-mail-reply"></i></a> <a class="w3-btn w3-light-grey">Forward<i class="w3-padding-left fa fa-arrow-right"></i></a>
  <hr>
  <p>Hello, i just wanted to let you know that i'll be home at lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  <p>Best Regards, <br>Borge Refsnes</p>
</div>

<div id="Jane" class="w3-container person">
  <br>
  <img class="w3-round w3-animate-top" src="/w3images/avatar5.png" style="width:20%;">
  <h5 class="w3-opacity">Subject: None</h5>
  <h4><i class="fa fa-clock-o"></i> From Jane Doe, Sep 25, 2015.</h4>
  <a class="w3-btn w3-light-grey">Reply<i class="w3-padding-left fa fa-mail-reply"></i></a> <a class="w3-btn w3-light-grey">Forward<i class="w3-padding-left fa fa-arrow-right"></i></a>
  <hr>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  <p>Forever yours,<br>Jane</p>
</div>

<div id="John" class="w3-container person">
  <br>
  <img class="w3-round w3-animate-top" src="/w3images/avatar2.png" style="width:20%;">
  <h5 class="w3-opacity">Subject: None</h5>
  <h4><i class="fa fa-clock-o"></i> From John Doe, Sep 23, 2015.</h4>
  <a class="w3-btn w3-light-grey">Reply<i class="w3-padding-left fa fa-mail-reply"></i></a> <a class="w3-btn w3-light-grey">Forward<i class="w3-padding-left fa fa-arrow-right"></i></a>
  <hr>
  <p>Welcome.</p>
  <p>That's it!</p>
</div>
     
</div>

<script>
var openInbox = document.getElementById("myBtn");
openInbox.click();

function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

function myFunc(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show"; 
        x.previousElementSibling.className += " w3-red";
    } else { 
        x.className = x.className.replace(" w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-red", "");
    }
}

openMail("Borge")
function openMail(personName) {
    var i;
    var x = document.getElementsByClassName("person");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    x = document.getElementsByClassName("test");
    for (i = 0; i < x.length; i++) {
       x[i].className = x[i].className.replace(" w3-light-grey", "");
    }
    document.getElementById(personName).style.display = "block";
    event.currentTarget.className += " w3-light-grey";
}
</script>

<script>
var openTab = document.getElementById("firstTab");
openTab.click();
</script>

</body>
</html> 
