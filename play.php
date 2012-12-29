<?php require_once('Connections/conn.php'); ?>
<?php

ini_set('include_path', ini_get('include_path').PATH_SEPARATOR.realpath('PEAR'));
require_once 'Games/Chess/Standard.php';
include_once('functions.php');
include_once('Chess.class.php');

if (empty($_GET['side']) || !in_array($_GET['side'], array('W', 'B'))) {
	echo 'Please choose side to play: W/B';
	exit;
}

$chess = new Chess;
$getFen = !empty($_GET['fen']) ? $_GET['fen'] : NULL;


if ($_GET['side'] === 'B') {
	$fromMove = 'W';	
} else if ($_GET['side'] === 'W') {
	$fromMove = 'B';	
} else {
	echo 'Please choose side to play: W/B';
	exit;
}





if ($fromMove == 'B') {
	$table = 'games';
	$moveB = 'W';
} else {
	$table = 'gamesblack';
	$moveB = 'B';
}
	
if ($totalRows_rsView == 0 && !empty($_GET['fen'])) {
	$moveB = !empty($_GET['moveby']) ? $_GET['moveby'] : $moveB;
	$query = sprintf("INSERT INTO $table SET fen = %s, pid = 0, moveby = %s, move=''", GetSQLValueString($colname_rsView, "text"),GetSQLValueString($colid_rsView, "int"));
}

echo $query_rsView.'<br>';
pr($row_rsView);

$standard = new Games_Chess_Standard;
$fen = $row_rsView['fen'];
$standard->resetGame($fen);
$toMove = $standard->toMove();
echo $toMove;
echo '<br>';
$result = $standard->gameOver();
echo $result;
echo '<br>';
$result = !empty($result) ? $result : 'In Progress';
$legalMovesOriginal = getlegalmoves($standard, $fen);
echo $fen;
echo '<br>';
pr($legalMovesOriginal);
exit;

$standard = process($standard, $fromMove, $toMove, $legalMovesOriginal, $row_rsView, $fen);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Play Game</title>
</head>

<body>
<table border="1" cellspacing="0" cellpadding="5">
	<tr>
		<td><strong>To Move</strong></td>
		<td><?php echo $toMove; ?>&nbsp;</td>
	</tr>
	<tr>
		<td><strong>Fen</strong></td>
		<td><?php echo $renderFen; ?>&nbsp;</td>
	</tr>
	<tr>
		<td><strong>Result</strong></td>
		<td><?php echo $result; ?>&nbsp;</td>
	</tr>
	<tr>
		<td><strong>Legal Moves Original</strong></td>
		<td><strong>Fen</strong></td>
	</tr>
	<?php foreach ($legalMovesOriginal as $k => $v) { ?>
	<tr>
		<td align="right"><a href="<?php echo $_SERVER['PHP_SELF']; ?>?fen=<?php echo $v['fen']; ?>&pid="><?php echo $v['move']; ?></a>&nbsp;</td>
		<td><?php echo $v['fen']; ?>&nbsp;</td>
	</tr>
	<?php } ?>
</table>
</body>
</html>
<?php
mysql_free_result($rsView);
?>
