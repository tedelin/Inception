<?php

$test = mysqli_connect('localhost', 'tedelin', 'helloworld', 'wp_data');
if (!$test) {
    die('MySQL Error: ' . mysqli_error());
}
echo 'Database connection is working properly!';
mysqli_close($test);