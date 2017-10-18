



<?php

//connect to database
    $dbcon = mysqli_connect("localhost", "root", "", "searchengine"); 
    
    mysqli_select_db($dbcon,"searchengine");
    
?>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Search results</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="cover.css" rel="stylesheet">
</head>
<body>
<?php
    $query = $_GET['query']; 
    // gets value sent over search form
     
    $min_length = 3;
    // setting the minimum length of the query 
     
    if(strlen($query) >= $min_length){ // if query length is more or equal minimum length then
         
        $query = htmlspecialchars($query); 
        // changes characters used in html to their equivalents, for example: < to &gt;
         
        $query = mysqli_real_escape_string($dbcon,$query);
        // makes sure nobody uses SQL injection
		
		         
        $raw_results = mysqli_query($dbcon,"SELECT * FROM results
            WHERE (`title` LIKE '%".$query."%') OR (`text` LIKE '%".$query."%')"); 
             
        
        if(mysqli_num_rows($raw_results) > 0){ 
             
            while($results = mysqli_fetch_array($raw_results)){
            // $results = mysql_fetch_array($raw_results) puts data from database into array, while it's valid it does the loop
             
                echo "<p><h3>".$results['title']."</h3>".$results['images']."".$results['text']."</p>";
                // posts results gotten from database(title,images and text) you can also show id ($results['id'])
            }
             
        }
        else{ // if there is no matching rows do following
            echo "No results";
        }
         
    }
    else{ // if query length is less than minimum
        echo "Minimum length is ".$min_length;
    }
?>
</body>
</html>