<?php
// var_dump($_SERVER["SERVER_NAME"]);
session_start();
header("Access-Control-Allow-Origin: *");

error_reporting(1);
// if($_SERVER["SERVER_NAME"]=='peken' || $_SERVER["SERVER_NAME"]=='localhost'){
// }else{
// 	error_reporting(0);
// }

require 'db.php';

$rute = substr($_SERVER["REQUEST_URI"], 1);
$req = [];
foreach (array('?', '#') as $v) {
	$r = explode( $v , $rute);
	$rute = $r[0];
	$req[$v] = null;
	if(isset($r[1])){
		$req[$v] = $r[1];
	}
}

$req['?'] = explode('&', $req['?']);
// $req['?'] = explode('&', $_SERVER["QUERY_STRING"]);
foreach ($req['?'] as $k => $v) {
	unset($req['?'][$k]);
	$v = explode('=', $v);
	if($v[0]=='')continue;
	if(!isset($v[1])){
		$v[1]=null;
	}
	$v[1] = urldecode($v[1]);
	$req['?'][$v[0]] = $v[1];
}
$_GET=$req['?'];

// var_dump($_POST);

$myurl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";
$login=null;

if(!isset($_SESSION['login'])){
	if(isset($_POST['u']) && isset($_POST['p'])){
		$login = get_user(strtolower($_POST['u']), $_POST['p']);
		// var_dump($login);
		// var_dump($_POST);
		// $salt = "__RakauPlain__";
		// echo hash("sha256", $_POST['u'].$salt.$_POST['p']);
		if($login!=null){
			$_SESSION['login'] = $login['id_user'];
			set_token($login['id_user']);
			// login success
		}
		else{
			// login failed
			// header('Location: /auth');
			// exit();
		}
	}else{
		// login failed
		// header('Location: /auth');
		// exit();
	}

}else{
	$login = get_login($_SESSION['login']);
	if($login!=null && isset($_COOKIE['token']) && $_COOKIE['token']==$login['token']){

	}else{
		// login failed
		session_destroy();
		// header('Location: /auth');
		// exit();
	}
}

// if($login==null && !prefix('auth') && 0){
// 	do{
// 		if(prefix('date'))break;
// 		if(prefix('raw'))break;
// 		if(prefix('stream'))break;
// 		if(prefix('user') && prefix('reset',1))break;
// 		header('Location: /auth?url='.urlencode($myurl));
// 		exit();
// 	}while(false);
// }else
if($login!=null && prefix('auth')){
	if(isset($_GET['url']) && $_GET['url']!=''){
		header('Location: '.$_GET['url']);
		exit();
	}

}


if($login['type']>1){
	$menu_list[]=['Admin','/admin'];
	// var_dump($menu_list);
}


$page = array();
$canonical = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]";



if(0 && $_SERVER['DOCUMENT_ROOT']!='/var/www/html/peken' && (!isset($_COOKIE['kkk']) || $_COOKIE['kkk']!='kkk')){
	header("HTTP/1.1 503 Service Unavailable");
	include 'page/maintenance.php';
	include 'page/template.simple.php';
}




// admin menu
else if(prefix('admin') && $login!=null && $login['type']>1){

	$menu_list=[
		// ['Beranda','/'],
		['Semua Pesanan','/admin/orders'],
		['Daftar Belanja','/admin/belanja'],
		['Struk','/admin/struk'],
		['Item','/admin/item'],
		['Resep','/admin/resep'],
		// ['Pesanan Saya','/user/order'],
	];


	if(prefix('users',1)){
		// include 'page/admin/header.php';
		include 'page/admin/users.php';
	}else
	if(prefix('upload',1)){
		// include 'page/admin/header.php';
		include 'page/admin/image.php';
	}else
	if(prefix('orders',1)){
		include 'page/header.php';
		include 'page/admin/order.list.php';
	}else
	if(prefix('belanja',1)){
		include 'page/header.php';
		include 'page/admin/belanja.php';
	}else
	if(prefix('rekap',1)){
		include 'page/header.php';
		include 'page/admin/belanja.rekap.harian.php';
	}else
	if(prefix('order-detail',1)){
		include 'page/header.php';
		include 'page/admin/order.php';
	}else
	if(prefix('resep',1)){

		if(prefix('view',2)){
			include 'page/header.php';
			include 'page/admin/resep.edit.php';
		}else
		if(prefix('print',2)){
			include 'page/header.php';
			include 'page/admin/print.resep.php';
		}else{
			include 'page/header.php';
			include 'page/admin/resep.php';
		}

	}else
	if(prefix('item',1)){
		include 'page/header.php';
		include 'page/admin/item.php';
	}else
	if(prefix('struk',1)){
		include 'page/header.php';
		include 'page/admin/struk.php';
	}
	else{
		include 'page/header.php';
		include 'page/admin/order.list.php';
	}
	echo "<style>#header{background:#555 !important;}</style>";
}







// raw
else if( prefix('raw') ){
	if(prefix('cart-update',1)){
	include 'raw/cart.update.php';
	}
}


// page
else if( prefix('page') ){
	if(prefix('cara-belanja',1)){
	include 'page/page.carabelanja.php';
	include 'page/template.simple2.php';
	}
	if(prefix('tos',1)){
	include 'page/page.tos.php';
	include 'page/template.simple2.php';
	}
}



else if(prefix('item')){
	include 'page/header.php';
	include 'page/item.php';
	include 'page/footer.php';
}

else if(prefix('category')){
	include 'page/header.php';
	include 'page/category.php';
	include 'page/footer.php';
}

else if(prefix('')){
	include 'page/header.php';
	include 'page/index.php';
	include 'page/footer.php';
}

else if(prefix('search')){
	include 'page/header.php';
	include 'page/item.search.php';
	include 'page/footer.php';

}


else if(prefix('user')){
	if(prefix('reset',1)){
		include 'page/user.reset.php';
	}
	else if(prefix('verification',1)){
		include 'page/verification.php';
		include 'page/template.simple.php';
	}
	else if(prefix('cart',1)){
		include 'page/header.php';
		include 'page/cart.php';
	}

	else if(prefix('order',1)){
		if(prefix('view',2)){
			include 'page/header.php';
			include 'page/order.php';
		}else
		if(prefix('',2)){
			include 'page/header.php';
			include 'page/order.list.php';
		}
	}

	else if(prefix('edit',1)){
		include 'page/header.php';
		include 'page/user.edit.php';
	}
	else if(prefix('address',1)){
		$gmapkey='AIzaSyDw1r9eSq6qOmiEEHb6ZfvpGXUWFac46xE';
		if(prefix('add',2)){
			include 'page/header.php';
			include 'page/user.addaddress.php';
		}
		else if(prefix('edit',2)){
			include 'page/header.php';
			include 'page/user.editaddress.php';
		}
		else if(prefix('view',2)){
			include 'page/header.php';
			include 'page/user.viewaddress.php';
		}
		else if(prefix('delete',2)){
			include 'page/header.php';
			include 'page/user.deleteaddress.php';
		}
		else if(prefix('setup',2)){
			include 'page/header.php';
			include 'page/user.address.setup.php';
		}
		else{
			header('Location: /user');
		}
	}
	else{
		include 'page/header.php';
		include 'page/user.php';
	}
	include 'page/footer.php';
}




else if(prefix('auth')){
	include 'page/login.php';
	include 'page/template.simple.php';
}
else if(prefix('register')){
	include 'page/register.php';
	include 'page/template.simple.php';
}
else if(prefix('logout')){
	session_destroy();
	$login=null;
	header('Location: /');
}

// else if(prefix('raPhCBO9IqMZM0GxaXGvwgo21IhemKU3_IPG6XHp8dU.html')){
// 	echo 'google-site-verification: raPhCBO9IqMZM0GxaXGvwgo21IhemKU3_IPG6XHp8dU.html';
// }

/*ERROR N FRIENDS*/
else if(prefix('404') ) {
	include 'error/404.php';
}

else {
	include 'error/404.php';
}


///////////////////////////////

function prefix($x,$p=0){
	global $rute, $canonical;
	$loc1 = explode('/', strtolower($rute.'/'));
	if(isset($loc1[$p]) && strtolower($x) == $loc1[$p] ){
		$canonical .="/".$loc1[$p];
		return true;
	}
	return false;
}

function get_rute($p=0){
	global $rute;
	$loc1 = explode('/', strtolower($rute));
	return isset($loc1[$p]) ? $loc1[$p] : false;
}


function get_ruteP($p=0){
	global $rute;
	$loc1 = explode('/', ($rute));
	return isset($loc1[$p]) ? $loc1[$p] : false;
}

function masuk($x){
	global $rute;
	return strpos($rute, $x) !== false;
}

function build_param($arr){
	foreach ($arr as $k => $v) {
		$loc1[] = $k.'='.urlencode($v);
	}
	return implode('&', $loc1);
}

function get_user($u, $p){
	global $_db;
	$u = strtolower($u);
	$salt = "__RakauPlain__";
	$hasil = $_db -> query("SELECT * FROM User WHERE lower(email)='"._norm($u)."' AND password='".hash("sha256", $p.$salt.$u)."' ");
	return mysqli_fetch_array($hasil,1);
}

function get_user_by_email($u){
	global $_db;
	$u = strtolower($u);
	$salt = "__RakauPlain__";
	$hasil = $_db -> query("SELECT * FROM User WHERE lower(email)='"._norm($u)."'  ");
	return mysqli_fetch_array($hasil,1);
}
function get_user_reset($u, $t){
	global $_db;
	$u = strtolower($u);
	$salt = "__RakauPlain__";
	$hasil = $_db -> query("SELECT * FROM User WHERE lower(email)='"._norm($u)."' AND reset_token='"._norm($t)."' AND reset_timeout IS NOT NULL AND reset_timeout>=CURRENT_TIMESTAMP ");
	return mysqli_fetch_array($hasil,1);
}

function new_user($u,$n, $p){
	global $_db;
	$u = strtolower($u);
	$salt = "__RakauPlain__";
	$insert = $_db -> query("INSERT INTO User (`email`, `name`,`password`) VALUES ('"._norm($u)."','"._norm($n)."','".hash("sha256", $p.$salt.$u)."') ");

	return $insert;
}

function update_user($u, $p, $t){
	global $_db;
	$u = strtolower($u);
	$salt = "__RakauPlain__";
	$hasil = $_db -> query("UPDATE User SET reset_timeout=NULL, password='".hash("sha256", $p.$salt.$u)."' WHERE lower(email)='"._norm($u)."' AND reset_token='"._norm($t)."' ");
	return mysqli_fetch_array($hasil,1);
}

function get_login($id){
	global $_db;
	$hasil = $_db -> query("SELECT * FROM User WHERE id_user='"._norm($id)."' ");
	return mysqli_fetch_array($hasil,1);
}

function set_token($id){
	global $_db;
	if(!isset($_COOKIE['token']))return;
	$hasil = $_db -> query("UPDATE User SET token='"._norm($_COOKIE['token'])."' WHERE id_user='"._norm($id)."' ");
	return mysqli_fetch_array($hasil,1);
}

function is_post_valid($a){
	foreach ($a as $v) {
		if(!isset($_POST[$v])){
			return false;
		}
	}
	return true;
}

function is_get_valid($a){
	foreach ($a as $v) {
		if(!isset($_GET[$v])){
			return false;
		}
	}
	return true;
}

function generate_cart_id($id){
	return(
		strtoupper("PO"
			.base_convert(date('m'),10,36)
			.base_convert((string) (60466176+intval($id)), 10, 36)
			.base_convert(date('d'),10,36)
		)
	);
}


function ongkir_distance($distance){
	if($distance<= 5000)return 15000;
	if($distance<= 8000)return 20000;
	if($distance<=11000)return 25000;
	if($distance<=17000)return 30000;

	return 9999999999;
}


function get_discount($bill){
	if($bill>=300000)return 10000;
	if($bill>=150000)return 5000;

	return 0;
}

function uploadImage($file, $new_name){
	$file_max_weight = 5000000; //limit the maximum size of file allowed (2000Mb)
	$ok_ext = ['jpg','png','jpeg']; // allow only these types of files
	$destination = './uploads/'; // where our files will be stored

	$filename = explode(".", $file["name"]); 
	$file_name = $file['name']; // file original name
	$file_name_no_ext = isset($filename[0]) ? $filename[0] : null; // File name without the extension
	$file_extension =strtolower($filename[count($filename)-1]);
	$file_weight = $file['size'];
	$file_type = $file['type'];
	// $w = getimagesize($file['tmp_name'])[0];
	// $h = getimagesize($file['tmp_name'])[1];

	$return='';

	do{
		if( $file['error'] != 0 ){
			$return = "Terjadi kesalahan";
			break;
		}
		if(!in_array($file_extension, $ok_ext)){
			$return = "Format file tidak didukung";
			break;
		}
		if( $file_weight > $file_max_weight ){
			$return = "Ukuran file teralu besar";
			break;
		}
		$fileNewName = $new_name.".".$file_extension;
		if(move_uploaded_file($file['tmp_name'], $destination.$fileNewName)){
			$return = "OK";
		}else{
			$return = "Gagal mengunggah";
		}

	}while(0);

	return $return;

}





function discord_notif($name){
	$header = array(
		"Content-Type: application/json",
	);

	$context = stream_context_create(array(
		"http" => array(
			"method" => "POST",
			"header" => implode("\r\n", $header),
			"content" => json_encode([
				"username" => "PKOn",
				"content" => "{$name}",
			]),
			
		),
		'ssl'=>[
			"verify_peer"=>false,
			"verify_peer_name"=>false,
		],
	));

	$response = file_get_contents('https://discordapp.com/api/webhooks/696389794619588609/FIE0kO8Sdo4ZOyKNJZxotR9Lf3z1850EnWDqtRutmr9S240OPvajYz9mYub5us68dHou' , false, $context);
	if (strpos($http_response_header[0], '200') === false) {
		// error_log("Request failed: " . $response);
	}
	return $response;
}





?>
