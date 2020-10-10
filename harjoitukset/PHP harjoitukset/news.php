<?php 
$myXML = "rss.xml";
$fh = fopen($myXML, 'w') or die("can't open file");
fwrite($fh, "<?xml version='1.0' encoding='UTF-8'?>\n");
fwrite($fh, "<?xml-stylesheet type='text/xsl' href='rss.xsl'?>\n");

try {
 $username = "root";
 $password = "";
 $connection = new PDO("mysql:host=localhost;dbname=xml", $username, $password);
} catch (PDOException $e) {
 die("ERR: " . $e->getMessage());
}
$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$connection->exec("SET NAMES utf8");

$query = $connection->prepare("SELECT * FROM news");
$query->execute();
fwrite($fh, "<channel>". "\n");

while($row = $query->fetch()) {
    fwrite($fh, "<item id='" . $row ['idNews'] . "'>\n");
    fwrite($fh, "<title>" . $row ['Title'] . "</title>\n");
    fwrite($fh, "<link>" . $row ['Link'] . "</link>\n");
    fwrite($fh, "<published>" . $row ['Published'] . "</published>\n");
    fwrite($fh, "</item>". "\n");
}

fwrite($fh, "</channel>"); 

fclose($fh);
echo "File " . $myXML . " written!";
?>