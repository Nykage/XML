<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>xml-harjoitukset</title>
                <link rel="stylesheet" type="text/css" href="xml-harjoitukset.css"/>
            </head>
            <body>
                <center>
                    <h1>XML</h1>
                    <h3>eXtensible Markup Language</h3>
                    <table>
                        <xsl:for-each select="xml-harjoitukset/harjoitukset">
                            <tr>
                                <a href="{linkki}" target="_blank"><xsl:value-of select="nimi" /></a>
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>