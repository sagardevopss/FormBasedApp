<%@page import="java.util.*, java.lang.reflect.*, javax.servlet.http.HttpSession "%>
<%@ page session="false" %>

<%@page import="java.util.*, java.lang.reflect.*, javax.servlet.http.HttpSession "%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bgimg {
  background-image: url('https://media.gqindia.com/wp-content/uploads/2020/12/Picture-4.jpg');
  height: 90%;
  background-position: center;
  background-size: cover;
  position: relative;
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}

.topleft {
  position: absolute;
  top: 0;
  left: 16px;
}

.bottomleft {
  position: absolute;
  bottom: 0;
  left: 16px;
}

.middle {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

hr {
  margin: auto;
  width: 40%;
}
</style>
<body>

<div class="bgimg">
  <div class="topleft">
    <p></p>
  </div>
  <div class="middle">
    <h1>SBICARD</h1>
    <hr>
    <p>welcome, you are successfully login now</p>
  </div>
  <div class="bottomleft">
    <p></p>
  </div>
</div>
<h3><a href="logout.jsp"> Click Here to Logout</a></h3>

</body>
</html>
