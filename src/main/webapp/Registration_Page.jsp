<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
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

        /* Form Label Styling */
        .form-label {
            color: #ecf0f1;
        }

        /* Error message styling */
        .text-danger {
            font-size: 0.9rem;
            color: #e74c3c; /* Red color for errors */
        }

        /* Link styling */
        a {
            color: #3498db;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive adjustments */
        .container {
            max-width: 400px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center align-items-center min-vh-100">
            <div class="col-12">
                <div class="card p-4">
                    <h4 class="text-center">Register</h4>
                    <form id="registerForm" onsubmit="return validateRegisterForm()">
                        <div class="mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                            <div id="emailError" class="text-danger d-none">Please enter a valid email.</div>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                            <div id="passwordError" class="text-danger d-none">Password cannot be empty.</div>
                        </div>
                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                            <div id="confirmPasswordError" class="text-danger d-none">Passwords do not match.</div>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Register</button>
                    </form>
                    <div class="mt-3 text-center">
                        <a href="login.html">Already have an account? Login here.</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="validation.js"></script>
</body>
</html>
