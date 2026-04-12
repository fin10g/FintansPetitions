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
<body class="bg-gray-100 p-6">
<div class="topnav">
    <a class="active" href="/">Home</a>
    <a href="/create">Create</a>
    <a href="/sign">Sign</a>
    <a href="/search">Search</a>
</div>
<div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden">
    <form class="p-6" action="/search" method="post">
        <div class="border-b border-gray-900/10 pb-12">
            <h2 class="text-base font-semibold leading-7 text-gray-900">View Fintan's Petitions</h2>
            <p class="mt-1 text-sm leading-6 text-gray-600">You are restricted to one signature per email so make your voice count.</p>

            <!--div class="mt-4 p-4 bg-green-100 text-green-700 rounded">
                SUCCESS MESSAGE
            </--div>

            <div class="mt-4 p-4 bg-red-100 text-red-700 rounded">
                ERROR MESSAGE
            </div-->
        </div>
    </form>
</div>
<div id="petitions" class="border-b border-gray-900/10 pb-12">
    @for(Petition petition : petitions)
        <br>
        <div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden">
            <form class="p-6" action="/search" method="post">
                <div class="petition border-b border-gray-900/10 pb-12">
                    <h2 class="text-base font-semibold leading-7 text-gray-900">${petition.getTitle()}</h2>
                    <p class="mt-1 text-sm leading-6 text-gray-600">${petition.getDescription()}</p>
                </div>
            </form>
        </div>
    @endfor
</div>
</body>
</html>