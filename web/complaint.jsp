<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaint Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: grey;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 130vh;
            margin: 0;
            
        }

        form {
            background-color: orange ;
            
            padding: 30px; /* Increased padding */
            border-radius: 12px; /* Increased border radius */
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Increased box shadow */
            width: 800px; /* Increased form width */
            transition: box-shadow 0.3s ease-in-out; /* Added transition effect */
        }

        form:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3); /* Hover effect */
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
        }

        input, textarea {
            width: 100%;
            padding: 12px; /* Increased padding */
            margin-bottom: 16px;
            border: 2px solid #4caf50; /* Increased border thickness */
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out; /* Added transition effect */
        }

        input:hover, textarea:hover {
            border-color: #45a049; /* Hover effect for border color */
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #4caf50; /* Focus effect for border color */
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 12px 15px; /* Increased padding */
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out; /* Added transition effect */
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover {
            background-color: #45a049; /* Hover effect for background color */
        }
    </style>
</head>
<body>
    <form id="myForm" method="post" action="ComplaintSubmissionServlet">
        <h2 style="text-align: center; font-size: 20px;">Complaint Form</h2>

        <!-- Personal Information -->
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Your Name" required>


            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" placeholder="Your Phone" required>
        </div>

        <!-- Additional Information -->
        <div>
            <label for="location">Location(urban/rural):</label>
            <input type="text" id="location" name="location" placeholder="location" required>
            <label for="issue">Address:</label>
            <textarea id="issue" name="issue" rows="4" placeholder="Your Address" required></textarea>
            <label for="complaint">Complaint:</label>
            <textarea id="complaint" name="complaint" rows="4" placeholder="Your Complaint" required></textarea>
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" placeholder="Your Message" required></textarea>
        </div>

        <!-- Submit Button -->
        <div style="text-align: center;">
            <button type="submit" id="submitButton" >SUBMIT</button>
        </div>
    </form>

    
</body>

</html>
