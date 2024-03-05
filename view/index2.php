<?php
include '../incl/header.incl.php';
include '../incl/conn.incl.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Summary</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link your stylesheet here -->
</head>
<body>
    <div class="container">
        <section class="payment-summary">
            <h2>Payment Summary With Farmer Details</h2>

            <?php
            $query = "SELECT `p_id`, `p_method`, `p_to`, `f_name`, `f_locality`, `f_ac` FROM `payment_summary_view`";
            $result = mysqli_query($conn, $query);
            if ($result && mysqli_num_rows($result) > 0) {
                echo "<table border='1'>";
                echo "<tr><th>Payment ID</th><th>Payment Method</th><th>Payment To</th><th>Farmer Name</th><th>Locality</th><th>Account Number</th></tr>";

                while ($row = mysqli_fetch_assoc($result)) {
                    $paymentId = $row['p_id'];
                    $paymentMethod = $row['p_method'];
                    $paymentTo = $row['p_to'];
                    $farmerName = $row['f_name'];
                    $locality = $row['f_locality'];
                    $accountNumber = $row['f_ac'];

                    echo "<tr>";
                    echo "<td>$paymentId</td>";
                    echo "<td>$paymentMethod</td>";
                    echo "<td>$paymentTo</td>";
                    echo "<td>$farmerName</td>";
                    echo "<td>$locality</td>";
                    echo "<td>$accountNumber</td>";
                    echo "</tr>";
                }

                echo "</table>";

                mysqli_free_result($result);
            } else {
                echo "No payment data available.";
            }

            mysqli_close($conn);
            ?>
        </section>
    </div>
</body>
</html>
