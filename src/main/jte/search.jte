@import com.example.fintanspetitions.domain.Petition
@import java.util.List
@param List<Petition> results = null
@param String term = null

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Petitions</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/css/styles.css">
    <style>
        .highlight {
            background-color: #FEF08A;
            font-weight: bold;
            border-radius: 2px;
            padding: 0 2px;
        }
    </style>
</head>
<body class="bg-gray-100 p-6">
<div class="topnav">
    <a href="/">Home</a>
    <a href="/create">Create</a>
    <a class="active" href="/search">Search</a>
</div>

<div class="max-w-3xl mx-auto">

    <div class="bg-white rounded-xl shadow-md p-6 mb-6">
        <h1 class="text-2xl font-bold text-gray-900 mb-4">Search Petitions</h1>
        <form method="GET" action="/search" class="flex gap-3">
            <input type="text"
                   name="term"
                   value="${term}"
                   placeholder="Search by title or description..."
                   class="flex-1 rounded-md border-0 px-3 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm"/>
            <button type="submit"
                    class="rounded-md bg-indigo-600 px-4 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500">
                Search
            </button>
        </form>
    </div>


    @if(term != null)
        @if(results != null && !results.isEmpty())
            <p class="text-sm text-gray-500 mb-4">${results.size()} result(s) found for "<strong>${term}</strong>"</p>
            @for(Petition petition : results)
                <a href="/petition/${petition.getId()}" style="text-decoration: none; color: inherit;">
                    <div class="bg-white rounded-xl shadow-md p-6 mb-4 hover:shadow-lg transition-shadow cursor-pointer">
                        <h2 class="text-lg font-semibold text-gray-900 mb-2"
                            id="title-${petition.getId()}">
                            ${petition.getTitle()}
                        </h2>
                        <p class="text-gray-600 text-sm"
                           id="desc-${petition.getId()}">
                            ${petition.getDescription()}
                        </p>
                        <p class="text-xs text-indigo-600 mt-3">Click to view & sign →</p>
                    </div>
                </a>
            @endfor
        @else
            <div class="bg-white rounded-xl shadow-md p-6 text-center">
                <p class="text-gray-500">No petitions found for "<strong>${term}</strong>"</p>
            </div>
        @endif
    @endif
</div>
</body>
</html>