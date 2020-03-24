<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>   
<!DOCTYPE html>

<html>
<head>
<input type="button" id="authBtn" value="connect.....">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

window.fbAsyncInit = function() {
    FB.init({
      appId      : '604686303448905',
      cookie     : true,                     // Enable cookies to allow the server to access the session.
      xfbml      : true,                     // Parse social plugins on this webpage.
      version    : 'v6.0'           // Use this Graph API version for this call.
    });

var callback = function(response){
	console.log(response);
	if(response.status === 'connected'){
		document.querySelector('#authBtn').value = 'Logout';
	}else{
		document.querySelector('#authBtn').value = 'Login';
	}
}

    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
      statusChangeCallback(response);        // Returns the login status.
    });
  };

  function checkLoginState() {               // Called when a person is finished with the Login Button.
	    FB.getLoginStatus(function(response) {   // See the onlogin handler
	      statusChangeCallback(response);
	    });
	  }
  
(function(d, s, id) {                      // Load the SDK asynchronously
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
</head>
<body>

</body>
</html>

