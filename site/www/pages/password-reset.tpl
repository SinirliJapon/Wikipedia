{{template "base" .}}

{{define "style"}}

<link rel="stylesheet" type="text/css" href="/static/css/reset.css" />{{end}}

{{define "content"}}

{{$user := index .Data "user"}}

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <link rel="stylesheet" type="text/css" href="/static/css/reset.css" />
</head>

<body>
    <div class="flex-container">
        <div class="section">
            <img class="image-later" style="width: 100%; "src="https://pngimg.com/uploads/wikipedia/wikipedia_PNG33.png" alt=""><br><br>         
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

        <div class="header">
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
                    <li><a href="#" class="not-log-in">{{$user.FirstName}} {{$user.LastName}}</a></li>
                </ul>
            </div><br><br>

            <h2 class="reset-h2">Reset password</h2>
            <hr class="reset-hr">
            <div class="reset-div">
                <p style="padding: 20px; text-align:center; font-size: 20px;" class="h2-p">
                    Fill in one of the fields to receive a temporary password via email.
                </p>
            </div>
            <div style="border: 1px solid #BFA3AF; background-color: #F2CEDD; margin: 20px;" class="flex-container">
                <form style="margin: 20px; font-size: 20px;" action="#" method="post">
                    <div class="up3">
                        <label for="email" style="font-family: Arial, Helvetica, sans-serif;">Email</label><br>
                        <input style="width: 400px; border-radius: 5px; border: 1px solid #F2CEDD;
                        background-color: #FFF5FA;" type="email" class="name" id="email" name="email"
                            autocomplete="off" placeholder="Enter your email"><br>
                    </div><br>

                    <div class="up7">
                        <input style="" type="submit" value="Reset" class="next">
                    </div>
                </form>
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