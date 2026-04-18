@param com.example.fintanspetitions.domain.Petition petition

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${petition.getTitle()}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body class="bg-gray-100 p-6">
<!--Navbar to quickly get around the site-->
<div class="topnav">
    <a class="active" href="/">Home</a>
    <a href="/create">Create</a>
    <a href="/search">Search</a>
</div>
<div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden p-6">
    <h1 class="text-2xl font-bold">${petition.getTitle()}</h1>
    <p class="mt-4 text-gray-600">${petition.getDescription()}</p>
    <p class="mt-2 text-gray-500">${petition.getSigners().size()} signers</p>

    <div class="mt-8">
        <h2 class="text-lg font-semibold">Sign this Petition</h2>
        <form method="POST" action="/petition/${petition.getId()}/sign">
            <div class="mt-4">
                <label class="block text-sm font-medium text-gray-900">First Name</label>
                <input type="text" name="firstName"
                       class="mt-2 block w-full rounded-md border-0 px-3 py-2 shadow-sm ring-1 ring-gray-300 sm:text-sm"/>
            </div>
            <div class="mt-4">
                <label class="block text-sm font-medium text-gray-900">Last Name</label>
                <input type="text" name="lastName"
                       class="mt-2 block w-full rounded-md border-0 px-3 py-2 shadow-sm ring-1 ring-gray-300 sm:text-sm"/>
            </div>
            <div class="mt-4">
                <label class="block text-sm font-medium text-gray-900">Email</label>
                <input type="email" name="email"
                       class="mt-2 block w-full rounded-md border-0 px-3 py-2 shadow-sm ring-1 ring-gray-300 sm:text-sm"/>
            </div>
            <button type="submit"
                    class="mt-6 rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white hover:bg-indigo-500">
                Sign Petition
            </button>
        </form>
    </div>
</div>
</body>
</html>