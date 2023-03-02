{{template "base" .}}

{{define "content"}}

{{$post := index .Data "post"}}

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create Post</title>
  <link rel="stylesheet" type="text/css" href="/static/css/create-post.css" />
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
          <li><a href="http://localhost:8080">Log out</a></li>
          <li><a href="#">Contributions</a></li>
          <li><a href="#">Watchlist</a></li>
          <li><a href="#">Beta</a></li>
          <li><a href="#">Preferences</a></li>
          <li><a href="#">Sendbox</a></li>
          <li><a href="http://localhost:8080/posts/myposts">My Posts</a></li>
          <li><a href="http://localhost:8080/users/create">Create Post</a></li>
          <li><a href="http://localhost:8080/users/profile/edit">Profile</a></li>
          <li><a href="#" class="not-log-in"></a></li>
        </ul>
      </div>
      <br><br>

      <div class="container-1">
        <div class="flex-container">
          <div class="flex-div">
            <h2 style="padding: 20px; text-align: center;">Post Edit</h2>
          </div>
        </div>
      </div>

      <div style="font-size:20px; border: 1px solid #F2CEDD;
      background-color: #FFF5FA; width: 97%;" class="container-2">
        <form style="margin-left: 20px;" action="/posts/{{$post.ID}}" method="post"><br>
          <label style="width: 97%; color: red; font-size: 20px; font-weight: normal;" for="title">Title:</label>
          <br>
          <input
            style="width: 97%; border: 1px solid #BFA3AF;
            background-color: #F2CEDD; border-radius: 5px;"
            type="text" id="title" name="title" autocomplete="off" value="{{$post.Title}}">
          <br><br>

          <label style="color: red; font-size: 20px; font-weight: normal;" for="body">Tell As story:</label>
          <br>
          <textarea
          style="width: 97%; border: 1px solid #BFA3AF;
          background-color: #F2CEDD; border-radius: 5px;"
            type="text" id="body" name="body" autocomplete="off" rows="5" cols="33">{{$post.Body}} </textarea>
          <br><br>
          <input style="margin-bottom: 20px;font-family: Arial, Helvetica, sans-serif;
      background-color: red;
      color: white;
      font-weight: bold;
      font-size: 22px;
      width: 400px;
      height: 50px;
      border: 1px solid red;
      border-radius: 5px;
      padding: 10px 20px;" rows="5" cols="33"
      class="p-body" type="submit" value="Update Post">
        </form>
      </div>
    </div>
</body>




{{if .Form}}
  <ul class="error">
    {{ range $key, $value := .Form.Errors }}
    <li><strong>{{ $key }}</strong>: {{ $value }}</li>
    {{ end }}
    <ul>
      {{end}}

  {{end}}