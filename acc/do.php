<?php

    

// DB TABLE Exporter
//
// How to use:
//
// Place this file in a safe place, edit the info just below here
// browse to the file, enjoy!

// CHANGE THIS STUFF FOR WHAT YOU NEED TO DO

     $dbhost  = "localhost";
     $dbuser  = "nishang";
     $dbpass  = "google1234";
     $dbname  = "hotels";
     $dbtable = "daily";
	 $ids=$_GET['roll'];
	 
	 	  

// END CHANGING STUFF


// first thing that we are going to do is make some functions for writing out
// and excel file. These functions do some hex writing and to be honest I got 
// them from some where else but hey it works so I am not going to question it 
// just reuse


// This one makes the beginning of the xls file
function xlsBOF() {
    echo pack("ssssss", 0x809, 0x8, 0x0, 0x10, 0x0, 0x0);
    return;
}

// This one makes the end of the xls file
function xlsEOF() {
    echo pack("ss", 0x0A, 0x00);
    return;
}

// this will write text in the cell you specify
function xlsWriteLabel($Row, $Col, $Value ) {
    $L = strlen($Value);
    echo pack("ssssss", 0x204, 8 + $L, $Row, $Col, 0x0, $L);
    echo $Value;
    return;
}



// make the connection an DB query
$dbc = mysql_connect( $dbhost , $dbuser , $dbpass ) or die( mysql_error() );
mysql_select_db( $dbname );

$month=$_POST['month'];
$month1="0".$_POST['month'];
	$year=$_POST['year'];
  
$q = "SELECT time,SUM(exp) FROM ".$dbtable." where month='".$month."' or month='".$month1."' and year='".$year."' and area='123' group by time   ";
//$q = "SELECT * FROM ".$dbtable." ";

$qr = mysql_query( $q ) or die( mysql_error() );


// Ok now we are going to send some headers so that this 
// thing that we are going make comes out of browser
// as an xls file.
// 
header("Pragma: public");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Content-Type: application/force-download");
header("Content-Type: application/octet-stream");
header("Content-Type: application/download");

//this line is important its makes the file name
header("Content-Disposition: attachment;filename=export_".$dbtable.".xls ");

header("Content-Transfer-Encoding: binary ");

// start the file
xlsBOF();

// these will be used for keeping things in order.
$col = 0;
$row = 0;

// This tells us that we are on the first row
$first = true;

while( $qrow = mysql_fetch_assoc( $qr ) )
{
    // Ok we are on the first row
    // lets make some headers of sorts
    if( $first )
    {
        foreach( $qrow as $k => $v )
        {
            // take the key and make label
            // make it uppper case and replace _ with ' '
            xlsWriteLabel( $row, $col, strtoupper( ereg_replace( "_" , " " , $k ) ) );
            $col++;
        }

        // prepare for the first real data row
        $col = 0;
        $row++;
        $first = false;
    }

    // go through the data
    foreach( $qrow as $k => $v )
    {
        // write it out
        xlsWriteLabel( $row, $col, $v );
        $col++;
    }
    // reset col and goto next row
    $col = 0;
    $row++;
}

xlsEOF();
exit();

?>