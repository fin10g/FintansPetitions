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
</head>
<body class="bg-gray-100 p-6">
<div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md overflow-hidden">
    <form class="p-6" action="/search" method="post">
        <div class="border-b border-gray-900/10 pb-12">
            <h2 class="text-base font-semibold leading-7 text-gray-900">View Fintan's Petitions</h2>
            <p class="mt-1 text-sm leading-6 text-gray-600">You are restricted to one signature per email so make your voice count.</p>
            <p class="mt-1 text-sm leading-6 text-gray-500">Fields marked with an asterisk (*) are required.</p>

            <!--div class="mt-4 p-4 bg-green-100 text-green-700 rounded">
                SUCCESS MESSAGE
            </--div>

            <div class="mt-4 p-4 bg-red-100 text-red-700 rounded">
                ERROR MESSAGE
            </div-->
        </div>
        <div>
            <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
                <div class="sm:col-span-6">
                    <label for="title" class="block text-sm font-medium leading-6 text-gray-900">
                        Search <span class="text-red-500">*</span>
                    </label>
                    <div class="mt-2">
                        <input type="text"
                               name="Search"
                               id="search"
                               placeholder="Search to see if your issue has been posted before."
                               class="block w-full rounded-md border-0 px-3 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Search</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-6 flex items-center justify-end gap-x-6">
            <button type="button" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Create</button>
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