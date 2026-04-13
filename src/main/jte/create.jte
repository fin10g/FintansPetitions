@param com.example.fintanspetitions.domain.Petition petition
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
    <a href="/search">Search</a>
</div>
<div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden">
    <form class="p-6" action="/create/petition" method="POST">
        <div class="border-b border-gray-900/10 pb-12">
            <h2 class="text-base font-semibold leading-7 text-gray-900">Create Fintan's Petitions</h2>
            <p class="mt-1 text-sm leading-6 text-gray-600">Add to the badly needed dialogue in this country</p>
            <p class="mt-1 text-sm leading-6 text-gray-500">Fields marked with an asterisk (*) are required.</p>

            <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
                <div class="sm:col-span-6">
                    <label for="title" class="block text-sm font-medium leading-6 text-gray-900">
                        Title <span class="text-red-500">*</span>
                    </label>
                    <div class="mt-2">
                        <input type="text"
                               name="title"
                               id="title"
                               placeholder="Enter title"
                               class="block w-full rounded-md border-0 px-3 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>
                <div class="sm:col-span-6">
                    <label for="description" class="block text-sm font-medium leading-6 text-gray-900">
                        Description <span class="text-red-500">*</span>
                    </label>
                    <div class="mt-2">
                        <textarea name="description"
                                  id="description"
                                  class="block w-full rounded-md border-0 px-3 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-6 flex items-center justify-end gap-x-6">
            <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Create Petition</button>
        </div>
    </form>
</div>
</body>
</html>