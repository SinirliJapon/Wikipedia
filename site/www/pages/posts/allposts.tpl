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
            <img class="image-later" style="width: 100%; " src="https://pngimg.com/uploads/wikipedia/wikipedia_PNG33.png" alt=""><br><br> 
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
                    <li><a href="http://localhost:8080/posts/create">Create Post</a></li>
                    <li><a href="http://localhost:8080/users/profile/edit">Profile</a></li>
                    <li><a href="#" class="not-log-in">{{$user.FirstName}} </a></li>
                    <li>{{if  $user.HaveOneOfRoles "ADMIN" "EDITOR" }}
                        <a style="margin-left: 20px; color: red;"  href="/admin/users">Edit Users</a>
                        {{end}}</li>
                </ul>
            </div><br><br>
            
            <div class="container-1">
                <div class="flex-container">
                    <div style="padding: 20px;" class="flex-div">
                        <h2>Welcome to Wikipedia</h2>
                        <p class="h2-p">
                            the <a>free encyclopedia</a> that <a>anyone can edit.</a>
                        </p>
                        <p class="h2-p-2">
                            6,481,137 articles in English
                        </p>
                    </div>
                    <div class="flex-div">
                        <ul>
                            <div class="flex-container">
                                <div class="flex-ul">
                                    <li><a href="#">The arts</a></li>
                                    <li><a href="#">Biography</a></li>
                                    <li><a href="#">Geography</a></li>
                                </div>
                                <div class="flex-ul">
                                    <li><a href="#">History</a></li>
                                    <li><a href="#">Mathematics</a></li>
                                    <li><a href="#">Science</a></li>
                                </div>
                                <div class="flex-ul">
                                    <li><a href="#">Society</a></li>
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">All Portals</a></li>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>

            <div style="width: 97%;" class="container-2">
                {{$posts := index .Data "posts"}}

                {{range $post := $posts}}
                <div style="border-radius: 5px; width: 97%;" class="h2-div">
                    <h2>
                        <strong>{{$post.Title}}</strong>
                    </h2>
                </div>

                <textarea class="p-body" style="width: 97%; border-radius: 5px; border: 1px solid #A3BFB1; background-color: #CEF2E0; margin-left: 20px;" rows="5" cols="33">{{$post.Body}}</textarea>

                {{if  $user.HaveOneOfRoles "ADMIN" "EDITOR" }}
                    <a style="margin-left: 20px; color: red;"  href="/posts/{{$post.ID}}/edit">Edit</a>
                    <br />
                    {{end}}
                    {{end}}

                    {{$nextPagePagination := index .Data "nextPagePagination"}}
                    <a style="padding-left: 20px; color: green" href="/posts/allposts">First Page</a>
                    <a style="padding-right: 20px; color: green; float:right;"
                        href="/posts/allposts?limit={{$nextPagePagination.Limit}}&offset={{$nextPagePagination.Offset}}">Next
                        Page</a>

                    {{end}}
                </div>

                
            </div>


        </div>
    </body>

    </html>