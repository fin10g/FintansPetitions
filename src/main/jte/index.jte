@import com.example.fintanspetitions.domain.Petition
@import java.util.List
@param List<Petition> petitions
    @param String message = null
    @param String error = null


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fintan's Petitions</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/css/styles.css" >
</head>
<!--Navbar to quickly get around the site-->
<body class="bg-gray-100 p-6">
<div class="topnav">
    <a class="active" href="/">Home</a>
    <a href="/create">Create</a>
    <a href="/search">Search</a>
</div>
<div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden">
    <form class="p-6" action="/search" method="post">
        <div class="border-b border-gray-900/10 pb-12">
            <h1 class="text-base font-semibold leading-7 text-gray-900">Fintan's Final Petitions</h1>
            <p class="mt-1 text-sm leading-6 text-gray-600">You are restricted to one signature per email so make your voice count.</p>
        </div>
    </form>
</div>
<div id="petitions" class="border-b border-gray-900/10 pb-12">
    <!--Loops Through pRepository to output petitions in their own <div>-->
            @for(Petition petition : petitions)
            <br>
                <!--Turns each petition <div> into a link-->
            <a href="/petition/${petition.getId()}" style="text-decoration: none; color: inherit;">
            <div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden">
                <form class="p-6" action="/search" method="post">
                <div class="petition border-b border-gray-900/10 pb-12">
                    <h1 class="text-base font-semibold leading-7 text-gray-900">${petition.getTitle()}</h1>
                    <p class="mt-1 text-sm leading-6 text-gray-600">${petition.getDescription()}</p>
                    <p class="text-xs text-indigo-600 mt-3">Click to view & sign →</p>
                </div>
                </form>
            </div>
            </a>
            @endfor
</div>
</body>
</html>