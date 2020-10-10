<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>books</title>
                <link rel="stylesheet" type="text/css" href="books.css"/>
            </head>
            <body>
                <center>
                    <h1>Kirjat julkaisuvuoden mukaisessa järjestyksessä</h1>
                    <table>
                        <tr>
                            <th>title</th>
                            <th>author</th>
                            <th>year</th>
                            <th>publisher</th>
                            <th>translator</th>
                            <th>original</th>
                        </tr>
                        <xsl:for-each select="books/book">
                            <xsl:sort select="year" order="ascending"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="year &lt; 2000">
                                        <td style="background-color:#75923a;">
                                            <xsl:value-of select="title"/>
                                        </td>
                                        <td style="background-color:#75923a;">
                                            <xsl:value-of select="author"/>
                                        </td>
                                        <td style="background-color:#75923a;">
                                            <xsl:value-of select="year"/>
                                        </td>
                                        <td style="background-color:#75923a;">
                                            <xsl:value-of select="publisher"/>
                                        </td>
                                        <td style="background-color:#75923a;">
                                            <xsl:value-of select="translator"/>
                                        </td>
                                        <td style="background-color:#75923a;">
                                            <xsl:value-of select="original"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                            <xsl:value-of select="title"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="author"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="year"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="publisher"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="translator"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="original"/>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>