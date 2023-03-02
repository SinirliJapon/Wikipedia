{{template "base" .}}

{{define "content"}}

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up Page</title>
  <link rel="stylesheet" type="text/css" href="/static/css/home.css" />
</head>

<body>

  <div class="flex-container">
    <div class="section">
      <img style="width: 100%; "src="https://pngimg.com/uploads/wikipedia/wikipedia_PNG33.png" alt=""><br><br>
      <ul>
        <li><a href="http://localhost:8080">Main page</a></li>
        <li><a href="http://localhost:8080">Contents</a></li>
        <li><a href="#">Current events</a></li>
        <li><a href="#">Random Article</a></li>
        <li><a href="#">About Wikipedia</a></li>
        <li><a href="#">Contact us</a></li>
        <li><a href="#">Donate</a></li>
      </ul>
      <p>Contribute</p>
      <hr>
      <ul>
        <li><a href="#">Help</a></li>
        <li><a href="#">Learn to edit</a></li>
        <li><a href="#">Community portal</a></li>
        <li><a href="#">Recent changes</a></li>
        <li><a href="#">Upload file</a></li>
      </ul>
      <p>Tools</p>
      <hr>
      <ul>
        <li><a href="#">Upload file</a></li>
        <li><a href="#">Special pages</a></li>
        <li><a href="#">Printable version</a></li>
      </ul>
      <p>Languages</p>
      <hr>
    </div>

    <div style="margin-bottom: 20px;" class="header">
      <div class="nav-bar">
        <ul>
          <li><a href="http://localhost:8080/users/login">Log in</a></li>
          <li><a href="http://localhost:8080/signup">Create account</a></li>
          <li><a href="#">Contributions</a></li>
          <li><a href="#">Talk</a></li>
          <li><a href="http://localhost:8080/users/login" class="not-log-in">Not logged in</a></li>
        </ul>
      </div><br><br>
      
      <h2 class="signup-h2">Create account</h2>
      <hr class="signup-hr">
      <p class="signup-p">
        Please enter your information correctly.
      </p>

      <div class="flex-container">
        <form class="sign-up-form" action="/users" method="post">

          <label for="first_name" style="font-family: Arial, Helvetica, sans-serif;">First name</label><a href="#"
            class="sign-up-a">(help me choose)</a><br>
          <input type="text" id="first_name" name="first_name" autocomplete="off"
            placeholder="Enter your first name"><br><br>

          <label for="last_name" style="font-family: Arial, Helvetica, sans-serif;">Last name</label><a href="#"
            class="sign-up-a"></a><br>
          <input type="text" id="last_name" name="last_name" autocomplete="off"
            placeholder="Enter your last name"><br><br>

          <label for="email" style="font-family: Arial, Helvetica, sans-serif;">Email address(recommended)</label><br>
          <input type="text" id="email" name="email" autocomplete="off" placeholder="Enter your email address"><br><br>

          <p>
            Email is required to recover your account if you lose your password.
          </p>

          <label for="password" style="font-family: Arial, Helvetica, sans-serif;">Password</label><br>
          <input type="password" id="password" name="password" autocomplete="off"
            placeholder="Enter a password"><br><br>

          <p>
            It is recommended to use a unique password that you are not using on any other website.
          </p>

          <label for="password" style="font-family: Arial, Helvetica, sans-serif;">Confirm password</label><br>
          <input type="password" id="password" name="password" autocomplete="off"
            placeholder="Enter password again"><br><br>

          <img src="/users/login/captcha.jpg" alt="captcha" width="400" height="50"><br>

          <label for="captcha" style="font-family: Arial, Helvetica, sans-serif;"></label><br>
          <input type="text" id="captcha" name="captcha" autocomplete="off"><br><br>
          <br><br>

          <input type="submit" class="button" value="Create your account"><br><br>
        </form>
        <div class="aside">
          <h2>Wikipedia is made by people like you.</h2>
          <p class="num">1,076,199,436</p>
          <p class="writing">edits</p>
          <p class="num">6,478,722</p>
          <p class="writing">articles</p>
          <p class="num">127,569</p>
          <p class="writing">recent contributors</p>
        </div>
      </div>
    </div>
  </div>
</body>

</html>

{{if .Form}}
  <ul class="error">
    {{ range $key, $value := .Form.Errors }}
    <li><strong>{{ $key }}</strong>: {{ $value }}</li>
    {{ end }}
    <ul>
      {{end}}

  {{end}}