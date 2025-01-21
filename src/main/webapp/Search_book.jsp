<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Books - Library Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Dark Background */
        body {
            background-color: #2c3e50;
            color: #ecf0f1;
        }

        /* Card Styling */
        .card {
            background-color: #34495e;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Heading Styling */
        h4 {
            color: #ecf0f1;
            font-weight: bold;
        }

        /* Button Styling */
        .btn-primary {
            background-color: #3498db;
            border-color: #3498db;
        }

        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #1f6398;
        }

        .btn-danger {
            background-color: #e74c3c;
            border-color: #e74c3c;
        }

        .btn-danger:hover {
            background-color: #c0392b;
            border-color: #a93226;
        }

        /* Responsive adjustments */
        .container {
            max-width: 800px;
        }

        .nav-link {
            color: #ecf0f1 !important;
        }

        .nav-link:hover {
            color: #3498db !important;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Library Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="bookingPage.html">Book a Book</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="userProfile.html">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.html">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="row justify-content-center align-items-center min-vh-100">
            <div class="col-12">
                <div class="card p-4">
                    <h4 class="text-center">Search Books</h4>
                    <p class="text-center">Choose a search option and enter the book name</p>

                    <!-- Search Form -->
                    <form action="searchResults.html" method="get">
                        <div class="mb-3">
                            <label for="searchType" class="form-label">Search By</label>
                            <select class="form-select" id="searchType" name="searchType" required>
                                <option value="">Select Search Type</option>
                                <option value="title">Title</option>
                                <option value="author">Author</option>
                                <option value="genre">Genre</option>
                                <option value="isbn">ISBN</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="searchQuery" class="form-label">Book Name</label>
                            <input type="text" class="form-control" id="searchQuery" name="query" placeholder="Enter the book name" required />
                        </div>

                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
