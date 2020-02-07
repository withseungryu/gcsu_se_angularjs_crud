<?php
require_once './dbcontroller.php';
$conn = new DBController();

$formID = $_POST['formID'];
$formName = $_POST['formName'];

echo("$formName");
$sql="DELETE FROM tblApplicantForms WHERE FormID='$formID'";

$result = $conn->runSelectQuery($sql);
$data = array();

   if ($result->num_rows > 0) {

        while ($row = $result->fetch_assoc()) {

            $data[] = $row;
        }
    }

echo json_encode($data);
?>