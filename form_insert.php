<?php
require_once './dbcontroller.php';
$conn = new DBController();


$formName = $_POST['formName'];
$formText = $_POST['formText'];

$sql="INSERT INTO tblApplicantForms VALUES ('$formID', '$formName', '$formText')";

$result = $conn->runSelectQuery($sql);
$data = array();

   if ($result->num_rows > 0) {

        while ($row = $result->fetch_assoc()) {

            $data[] = $row;
        }
    }

echo json_encode($data);
?>