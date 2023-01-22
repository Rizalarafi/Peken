<?php
$_db=new mysqli("localhost","root","","peken_test");

function _norm($s){
    return implode("''", explode("'", $s));
}

function _isdatevalid($date){
	$date = explode('-', $date);
	if(count($date)<2)return false;
	return checkdate($date[1], isset($date[2])?$date[2]:1, $date[0]);
}


$gmapkey = 'AIzaSyDw1r9eSq6qOmiEEHb6ZfvpGXUWFac46xE'; 
// $gmapkey = 'AIzaSyDzJ3jj3LK-pTyLoxSYMv20niKUf-qHotk'; // peken.online
$gmapbaseloc=[-6.8964186892594, 107.60708909549];
$myvars = [
	'minbuy'=>0,
	'maxdistance'=>17000,
];

$menu_list=[
	['Beranda','/'],
	['Cara Belanja','/page/cara-belanja'],
	['Pesanan Saya','/user/order'],
	// ['Informasi','#'],
];

?>
