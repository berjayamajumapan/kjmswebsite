<?phpphp
include "viewer.php";


// script: example.php
// copyright: 2003, SaveHits.com
// requires PHP 4.3.x with XML extension
// version: 1.0

// configuration
$aff_id=499;
$subacc="main";

$feed_url='http://www.savehits.com/xmlfeed.php?aff_id=%d&ip=%s&keyword=%s&said=$subacc';
//$feed_url='http://www.savehits.com/xmlfeed.php?aff_id=%d&ip=255.255.255.210&keywrd=%s';
//$feed_url='xmlfeed.xml';

//list count
$record=10;

//record color
$oddcolor = "#EEEEEE";
$evencolor = "#FFFFFF";

// init
$ip=$_SERVER['REMOTE_ADDR'];

if ($_SERVER['REQUEST_METHOD']=='GET'){
	$DATA=&$_GET;
}else{
	$DATA=&$_POST;
}

if (!(isset($DATA['keyword']) && ($keyword=$DATA['keyword']))){
	// no keyword was provided. 
	// do something before exit
	echo 'Missing keyword argument.<br> try <a href="savehits.php?keyword=example">savehits.php?keyword=example</a>';
	exit;
}

$feed_url=sprintf($feed_url,$aff_id,$ip,rawurlencode($keyword));
$feed_index=-1;
$feed_index1=-1;
$feed_index2=-1;
$feed_data=array();
$feed_data1=array();
$feed_data2=array();

// XML parser

function XMLParser_se($parser,$name,$attrs){
	global $feed_data,$feed_index,$cd;
	$cd='';	
	if ($name=='RECORD'){
		$feed_index++;
		$feed_data[]=array();
	}elseif($name=='BID'){
		$cd='bid';
		$feed_data[$feed_index]['showbid']=$attrs['SHOWBID'] ? 1 : 0;
	}elseif($name=='TITLE'){
		$cd='title';
	}elseif($name=='DESCRIPTION'){
		$cd='desc';
	}elseif($name=='URL'){
		$cd='url';
	}elseif($name=='CLICKURL'){
		$cd='clickurl';
	}
}

function XMLParser_se1($parser,$name,$attrs){
	global $feed_data1,$feed_index1,$cd1,$getnode1;
	$cd1='';	
	if ($name=='RELATED'){
		$feed_data1[]=array();
		$getnode1 = 1;
	}elseif ($name=='PREMIUM' || $name=='RECORD'){
		$getnode1 = 0;
	}elseif($name=='NAME' && $getnode1 == 1){
		$feed_index1++;
		$cd1='name';
	}
}

function XMLParser_se2($parser,$name,$attrs){
	global $feed_data2,$feed_index2,$cd2,$getnode2;
	$cd2='';	
	if ($name=='PREMIUM'){
		$feed_data2[]=array();
		$getnode2 = 1;
	}elseif ($name=='RELATED' || $name=='RECORD'){
		$getnode2 = 0;
	}elseif($name=='NAME' && $getnode2 == 1){
		$feed_index2++;
		$cd2='name';
	}
}

function XMLParser_ee($parser,$name){
	global $cd;
	$cd='';
}

function XMLParser_ee1($parser,$name){
	global $cd1;
	$cd1='';
}

function XMLParser_ee2($parser,$name){
	global $cd2;
	$cd2='';
}

function XMLParser_cd($parser,$data){
	global $feed_index,$feed_data,$cd;
	if ($cd){
		$i=&$feed_index;
		if (isset($feed_data[$i][$cd])){
			$feed_data[$i][$cd].=$data;
		}else{
			$feed_data[$i][$cd]=$data;
		}
	}
}

function XMLParser_cd1($parser,$data){
	global $feed_index1,$feed_data1,$cd1;
	if ($cd1){
		$i=&$feed_index1;
		if (isset($feed_data1[$i][$cd1])){
			$feed_data1[$i][$cd1].=$data;
		}else{
			$feed_data1[$i][$cd1]=$data;
		}
	}
}

function XMLParser_cd2($parser,$data){
	global $feed_index2,$feed_data2,$cd2;
	if ($cd2){
		$i=&$feed_index2;
		if (isset($feed_data2[$i][$cd2])){
			$feed_data2[$i][$cd2].=$data;
		}else{
			$feed_data2[$i][$cd2]=$data;
		}
	}
}

//$fp = fopen($feed_url,"r");
//$xml=fread($fp,filesize($feed_url));
$xml=file_get_contents($feed_url);
$parser=xml_parser_create();
xml_parser_set_option($parser,XML_OPTION_CASE_FOLDING,TRUE);
xml_parser_set_option($parser,XML_OPTION_SKIP_WHITE,TRUE);
xml_set_element_handler($parser,'XMLParser_se','XMLParser_ee');
xml_set_character_data_handler($parser,'XMLParser_cd');
xml_parse($parser,$xml);
xml_parser_free($parser);

//$fp = fopen($feed_url,"r");
//$xml=fread($fp,filesize($feed_url));
$xml=file_get_contents($feed_url);
$parser=xml_parser_create();
xml_parser_set_option($parser,XML_OPTION_CASE_FOLDING,TRUE);
xml_parser_set_option($parser,XML_OPTION_SKIP_WHITE,TRUE);
xml_set_element_handler($parser,'XMLParser_se1','XMLParser_ee1');
xml_set_character_data_handler($parser,'XMLParser_cd1');
xml_parse($parser,$xml);
xml_parser_free($parser);

//$fp = fopen($feed_url,"r");
//$xml=fread($fp,filesize($feed_url));
$xml=file_get_contents($feed_url);
$parser=xml_parser_create();
xml_parser_set_option($parser,XML_OPTION_CASE_FOLDING,TRUE);
xml_parser_set_option($parser,XML_OPTION_SKIP_WHITE,TRUE);
xml_set_element_handler($parser,'XMLParser_se2','XMLParser_ee2');
xml_set_character_data_handler($parser,'XMLParser_cd2');
xml_parse($parser,$xml);
xml_parser_free($parser);

// output of result

print_header("");
?>
<table width="100%" align="center">
	<tr>
		<td align="center">
<?php
echo '<b>Keyword: </b>'.$keyword.'</td><td align="center"><form action="savehits.php" method="get" name="search">
				<tr><td nowrap align="center">
				<input name="keyword" type="text" value="'.$_GET["keyword"].'" size="30" maxlength="256" style="margin-left:10px;" />
				<input name="Submit" type="submit" value="Search" style="margin-left:10px;" />
				</td></tr>
				</form></td></tr><tr><td><br><hr size=1>';
?>
<table width="100%" align="center">
	<tr>
		<td width="80%" valign="top">
<?php
if(!isset($_GET['pg'])){
	$pg = 1;
}
else{
	$pg = $_GET['pg'];
}

$nextrecord = $record;
if ($feed_index>=0){
echo "<table align=\"center\" width=\"100%\" cellspacing=0 cellpadding=2>";
	for ($i=(($pg-1)*$record);$i<((($pg-1)*$record)+$record);$i++){
		if($i<=$feed_index){
			if ($i % 2) 
				$bgcolor = $evencolor;
			else 
				$bgcolor = $oddcolor;
		
			if(($feed_index-((($pg-1)*$record)+$record))<$record){
				$nextrecord = $feed_index-((($pg-1)*$record)+$record) + 1;
			}
			echo "<tr><th align=\"left\" bgcolor=\"$bgcolor\" class=\"searchtitle\" colspan=\"2\" valign=\"top\" nowrap><a class=\"searchtitle\" href='".$feed_data[$i]['clickurl']."'>".htmlspecialchars($feed_data[$i]['title'])."</a></th></tr>";
			
			echo "<tr>";
			echo "<td class=\"searchdesc\" bgcolor=\"$bgcolor\" colspan=\"2\" valign=\"top\">".htmlspecialchars($feed_data[$i]['desc'])."</td>";
			echo "</tr>";

			echo "<tr>";
			echo "<td class=\"searchurl\" bgcolor=\"$bgcolor\"><a class=\"searchurl\" href='".$feed_data[$i]['clickurl']."'>".htmlspecialchars($feed_data[$i]['url'])."</a></td>";
			echo "<td class=\"searchbid\" bgcolor=\"$bgcolor\" nowrap width=\"1%\" align=\"right\"><strong>bid: ".($feed_data[$i]['showbid'] ? sprintf('%.2f',$feed_data[$i]['bid']) : '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;')."</strong></td>";
			echo "</tr>";

			echo "<tr><td colspan=\"2\" bgcolor=\"$bgcolor\"></td></tr>";
		}
	}
echo "</table>";
?>
		<br>
		<table align="center" valign="top" width="100%">
			<tr>
				<td align="center" width="50%">
					<?php
					if($pg==1){
					}
					else{
					?>
					<a href="savehits.php?pg=<?php echo $pg-1?>&keyword=<?php echo $keyword?>" class="searchtitle">[Prev <?php echo $record?> Record]</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<?php
					}
					if((($pg)*$record)>=$feed_index){
					}
					else{
					?>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="savehits.php?pg=<?php echo $pg+1?>&keyword=<?php echo $keyword?>" class="searchtitle">[Next <?php echo $nextrecord?> Record]</a>
					<?php
					}
					?>
				</td>
			</tr>
		</table>

<?php
}else{
	echo 'Empty result';
}
?>
		</td>
		<td valign="top" class="searchtitle" align="left">
		&nbsp;RELATED SEARCH			
<?php
echo "<table align=\"center\" width=\"100%\" valign='top'>";
for ($i=0;$i<=$feed_index1;$i++){
	if($i<=$feed_index1){
		if ($i % 2) 
			$bgcolor = $evencolor; 
		else 
			$bgcolor = $oddcolor;
		echo "<tr>";
		echo "<td class=\"searchurl\" bgcolor=\"$bgcolor\" align=\"left\"><a class=\"searchurl\" href='savehits.php?pg=1&keyword=".$feed_data1[$i]['name']."'>".htmlspecialchars($feed_data1[$i]['name'])."</a></td>";
		echo "</tr>";
	}
}
echo "</table>";
?>
		<br>
		&nbsp;PREMIUM
<?php
echo "<table align=\"center\" width=\"100%\" valign='top'>";
for ($i=0;$i<=$feed_index2;$i++){
	if($i<=$feed_index2){
		if ($i % 2) 
			$bgcolor = $evencolor; 
		else 
			$bgcolor = $oddcolor;
		echo "<tr>";
		echo "<td class=\"searchurl\" bgcolor=\"$bgcolor\" align=\"left\"><a class=\"searchurl\" href='savehits.php?pg=1&keyword=".$feed_data2[$i]['name']."'>".htmlspecialchars($feed_data2[$i]['name'])."</a></td>";
		echo "</tr>";
	}
}
echo "</table>";
?>
		</td>
	</tr>
</table>
		</td>
	</tr>
</table>
<?php
print_footer();
?>