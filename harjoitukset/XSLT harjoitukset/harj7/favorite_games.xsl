<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lempi pelit</title>
                <link rel="stylesheet" type="text/css" href="favorite_games.css"/>
            </head>
            <body>
                <center>
                    <h1>Minun lempi pelini</h1>
                    <h3>Eurooppalainen data</h3>
                    <table>
                        <tr>
                            <th>title</th>
                            <th>developer</th>
                            <th>year</th>
                            <th>publisher</th>
                            <th>link</th>
                            <th>wallpaper</th>
                        </tr>
                        <xsl:for-each select="games/game">
                            <xsl:sort select="year" order="ascending"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="title"/>
                                </td>
                                <td>
                                    <xsl:value-of select="developer"/>
                                </td>
                                <td>
                                    <xsl:value-of select="year"/>
                                </td>
                                <td>
                                    <xsl:value-of select="publisher"/>
                                </td>
                                <td>
                                    <xsl:variable name="hyperlink"><xsl:value-of select="link" /></xsl:variable>
                                    <a href="{$hyperlink}" target="_blank">lisää tietoa</a>
                                </td>
                                <td>
                                    <xsl:variable name="imagelink"><xsl:value-of select="image" /></xsl:variable>
                                    <img src="{$imagelink}" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>