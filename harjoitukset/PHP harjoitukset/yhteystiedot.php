<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yhteystiedot</title>
</head>
<body>
    <?php
        $xmlDoc = new DOMDocument();
        $xmlDoc->load("yhteystiedot.xml");
        $x = $xmlDoc->documentElement;
        $nimet = $x->getElementsByTagName( "nimi" );
        $nimi = $nimet->item(0)->nodeValue;
        $lahiosoite = $x->getElementsByTagName( "lahiosoite" )->item(0)->nodeValue;
        $postiosoite = $x->getElementsByTagName( "postiosoite" )->item(0)->nodeValue;
        $postinumero = $x->getElementsByTagName( "postinumero" )->item(0)->nodeValue;
        echo "<form>";
        echo "<form action='' method='get'>";
        echo "Nimi: <input type='text' value='$nimi' name='nimi'/><br />";
        echo "Lahiosoite: <input type='text' value='$lahiosoite' name='lahiosoite'/><br />";
        echo "Postiosoite: <input type='text' value='$postiosoite' name='postiosoite'/><br />";
        echo "Postinumero: <input type='text' value='$postinumero' name='postinumero'/><br />";
        echo "<input type='submit' name='submit' value='Submit'>";
        echo "</form>";
        ?>
        <?php
        if(!empty($_GET['submit'])) {
            $myXML = "yhteystiedot.xml";
            $fh = fopen($myXML, 'w') or die("can't open file");
            fwrite($fh, "<?xml version='1.0' encoding='UTF-8'?>\n");
            fwrite($fh, "<tiedot>". "\n");
            fwrite($fh, "<nimi>" . $_GET['nimi'] . "</nimi>\n");
            fwrite($fh, "<lahiosoite>" . $_GET['lahiosoite'] . "</lahiosoite>\n");
            fwrite($fh, "<postiosoite>" . $_GET['postiosoite'] . "</postiosoite>\n");
            fwrite($fh, "<postinumero>" . $_GET['postinumero'] . "</postinumero>\n");
            fwrite($fh, "</tiedot>"); 
            fclose($fh);
        }
    ?>
</body>
</html>