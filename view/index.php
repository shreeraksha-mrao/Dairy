<?php
include '../incl/header.incl.php';
include '../incl/conn.incl.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Points and Payment Summary</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link your stylesheet here -->
</head>
<body>
    <div class="container">
        <section class="employee-section">
            <h2>Employee Points</h2>

            <?php
            $query = "SELECT e.e_name AS Employee_Name, COALESCE(ep.points, 0) AS Total_Points 
                      FROM employees e 
                      LEFT JOIN employee_points ep ON e.id = ep.e_id";

            $result = mysqli_query($conn, $query);
            if ($result && mysqli_num_rows($result) > 0) {
                echo "<div class='employee-info-container'>";
                while ($row = mysqli_fetch_assoc($result)) {
                    $employeeName = $row['Employee_Name'];
                    $employeePoints = $row['Total_Points'];

                    echo "<div class='employee-info'>";
                    echo "<p><strong>Employee Name:</strong> $employeeName</p>";
                    echo "<p><strong>Employee Points:</strong> $employeePoints</p>";
                    echo "</div>";
                    echo "<hr>"; // Add a line break after each employee point
                }
                echo "</div>";
                mysqli_free_result($result);
            } else {
                echo "No employee data available.";
            }
            ?>
        </section>

        