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
  background-image: url('data:image/jpeg;base64,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');
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
