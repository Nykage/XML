<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
        <title>Tuotteet</title>
        </head>
        <body>
            <center>
                <h1>Tuotteet</h1>
                <table border="2">
                    <tr>
                        <th>nimike</th>
                        <th>ovh</th>
                        <th>ale</th>
                        <th>erotus</th>
                        <th>ale%</th>
                    </tr>
                    <xsl:for-each select="tuotteet/tuote">
                        <tr>
                            <td><xsl:value-of select="nimike"/></td>
                            <td><xsl:value-of select="ovh"/></td>
                            <td><xsl:value-of select="ale"/></td>
                            <td><xsl:value-of select="ovh - ale"/></td>
                            <td><xsl:value-of select="round(((ovh - ale) div ovh )*100)"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </center>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>