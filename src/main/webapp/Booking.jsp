<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Booking Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Dark Background */
        body {
            background-color: #2c3e50;
            color: #ecf0f1; /* Light text color */
        }

        /* Card Styling */
        .card {
            background-color: #34495e; /* Darker card background */
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Heading Styling */
        h4 {
            color: #ecf0f1; /* Light text color for heading */
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

        /* Form Label Styling */
        .form-label {
            color: #ecf0f1;
        }

        /* Responsive adjustments */
        .container {
            max-width: 600px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center align-items-center min-vh-100">
            <div class="col-12">
                <div class="card p-4">
                    <h4 class="text-center">Book a Library Item</h4>

                    <!-- Book selection form -->
                    <div class="mb-3">
                        <label for="bookTitle" class="form-label">Select Book</label>
                        <select class="form-select" id="bookTitle" name="bookTitle">
                            <option value="book1">The Great Gatsby</option>
                            <option value="book2">To Kill a Mockingbird</option>
                            <option value="book3">1984</option>
                            <option value="book4">Moby Dick</option>
                        </select>
                    </div>

                    <!-- Date input form -->
                    <div class="mb-3">
                        <label for="bookDate" class="form-label">Booking Date</label>
                        <input type="date" class="form-control" id="bookDate" name="bookDate">
                    </div>

                    <!-- Booking Button -->
                    <a href="bookingConfirmation.html" class="btn btn-primary w-100 mt-2">Book Now</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
