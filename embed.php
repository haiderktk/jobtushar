<?php
define('_VALID', true);
require 'include/config.php';
require 'include/function_global.php';
require 'include/function_smarty.php';
require 'classes/pagination.class.php';

$vkey = get_request_arg('embed', 'STRING');
if ( !$vkey ) {
	$smarty->assign('video', $video);
	$smarty->display('embed.tpl');
	exit;
}

$sql        = "SELECT * FROM video WHERE vkey = '" .$vkey. "' AND active = '1' LIMIT 1";
$rs         = $conn->execute($sql);

if ( $conn->Affected_Rows() != 1 ) {
	$smarty->assign('video', $video);
	$smarty->display('embed.tpl');
	exit;
}

$video              = $rs->getrows();
$video              = $video['0'];

$sql        = "UPDATE video SET viewnumber = viewnumber+1, viewtime='" .date('Y-m-d H:i:s'). "' WHERE VID = " .$video['VID']. " LIMIT 1";
$conn->execute($sql);

$smarty->assign('video', $video);
$smarty->display('embed.tpl');
?>