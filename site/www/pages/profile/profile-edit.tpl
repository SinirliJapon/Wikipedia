{{template "base" .}}

{{define "content"}}

{{$user := index .Data "user"}}

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>
  <link rel="stylesheet" type="text/css" href="/static/css/allposts.css" />
</head>

<body>

  <div class="flex-container">
    <div class="section">
      <img class="image-later" style="width: 100%; " src="https://pngimg.com/uploads/wikipedia/wikipedia_PNG33.png"
        alt="">
      <br><br>
      <ul>
        <li><a href="http://localhost:8080/posts/allposts">Main page</a></li>
        <li><a href="http://localhost:8080/posts/allposts">Contents</a></li>
        <li><a href="http://localhost:8080/news/all">All News</a></li>
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
        <li><a href="#">What links here</a></li>
        <li><a href="#">Related changes</a></li>
        <li><a href="#">Special pages</a></li>
        <li><a href="#">Permanent link</a></li>
        <li><a href="#">Page information</a></li>
        <li><a href="#">Wikidata item</a></li>
      </ul>
      <p>Print/export</p>
      <hr>
      <ul>
        <li><a href="#">Download as PDF</a></li>
        <li><a href="#">Printable version</a></li>
      </ul>
      <p>In other projects</p>
      <hr>
      <ul>
        <li><a href="#">Wikimedia Commons</a></li>
        <li><a href="#">MediaWiki</a></li>
        <li><a href="#">Meta-Wiki</a></li>
        <li><a href="#">Multilingual Wikisource</a></li>
        <li><a href="#">Wikispecies</a></li>
        <li><a href="#">Wikibooks</a></li>
        <li><a href="#">Wikidata</a></li>
        <li><a href="#">Wikimania</a></li>
        <li><a href="#">Wikinews</a></li>
        <li><a href="#">Wikiquote</a></li>
        <li><a href="#">Wikisource</a></li>
        <li><a href="#">Wikiversity</a></li>
        <li><a href="#">Wikivoyage</a></li>
        <li><a href="#">Wiktionary</a></li>
      </ul>
      <p>Languages</p>
      <hr>
    </div>

    <div style="margin-bottom: 20px;" class="header">
      <div class="nav-bar">
        <ul>
          <li><a href="http://localhost:8080/users/login">Log out</a></li>
          <li><a href="#">Contributions</a></li>
          <li><a href="#">Watchlist</a></li>
          <li><a href="#">Beta</a></li>
          <li><a href="#">Preferences</a></li>
          <li><a href="#">Sendbox</a></li>
          <li><a href="http://localhost:8080/posts/myposts">My Posts</a></li>
          <li><a href="http://localhost:8080/posts/create">Create Post</a></li>
          <li><a href="http://localhost:8080/users/profile/edit">Profile</a></li>
          <li><a href="http://localhost:8080/users/profile/edit" class="not-log-in">{{$user.FirstName}} {{$user.LastName}}</a></li>
        </ul>
      </div>
      <br><br>

      <div class="container-1">
        <div class="flex-container">
          <div class="flex-div">
            <h2 style="padding:20px; text-align: center;">Edit Profile</h2>
          </div>
        </div>
      </div>

      <div style="width: 97%;background-color: #FAF5FF; border: 1px solid #DDCEF2;" class="container-2">
        <div style="display: flex;" class="flex-container">
          <div style="flex: 50%; float: left; margin: 20px;" class="c-1">
            <br>
            <form style="font-size: 20px;" action="/users/profile/edit" method="post">
              <label style="color: purple; font-size: 20px; font-weight: regular;" for="first_name">First
                Name</label><br>
              <input
                style="border: 1px solid #AFA3BF; background-color: #DDCEF2; width: 400px; height: 40px; border-radius: 5px;"
                type="text" id="first_name" name="first_name" value="{{$user.FirstName}}" autocomplete="off"><br><br>

              <label style="color: purple; font-size: 20px; font-weight: regular;" for="last_name">Last Name</label><br>
              <input
                style="border: 1px solid #AFA3BF; background-color: #DDCEF2; width: 400px; height: 40px; border-radius: 5px;"
                type="text" id="last_name" name="last_name" value="{{$user.LastName}}" autocomplete="off"><br><br>

              <label style="color: purple; font-size: 20px; font-weight: regular;" for="email">Email</label><br>
              <input
                style="border: 1px solid #AFA3BF; background-color: #DDCEF2; width: 400px; height: 40px; border-radius: 5px;"
                type="text" id="email" name="email" value="{{$user.Email}}" autocomplete="off"><br><br>

              <input style="font-family: Arial, Helvetica, sans-serif;
              background-color: purple;
              color: white;
              font-weight: bold;
              font-size: 22px;
              width: 400px;
              height: 50px;
              border: 1px solid purple;
              border-radius: 5px;
              padding: 10px 20px;" type="submit" value="Update"><br><br>

              <a style="color: purple;" href="http://localhost:8080/password-reset">I want to change my password.</a>
            </form>
          </div>
          <br>

          <div style="margin: 20px; flex: 50%; float: right;" class="c-2">
            <form style="font-size: 20px;" action="/users/profile/image/upload" method="post"
              enctype="multipart/form-data">
              <img style="border-radius:50%; margin: 50px; box-shadow: 10px 10px 10px 10px;" src="/users/profile/image"
                alt="profile image" width="150" height="150">
              <input style="margin-top: 20px;" type="file" name="profile_image" multiple />
              <input style="  margin-top: 20px; background-color: purple;
                color: white;
                font-weight: bold;
                font-size: 22px;
                width: 400px;
                height: 50px;
                border: 1px solid purple;
                border-radius: 5px;
                padding: 10px 20px;" type="submit" value="Update Image">
            </form>
          </div>
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