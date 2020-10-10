<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>catalog</title>
                <link rel="stylesheet" type="text/css" href="catalog.css"/>
            </head>
            <body>
                <center>
                    <img src="{catalog/cover/cover-image}" class="cover-image"/>
                    <p class="intro"><xsl:value-of select="catalog/cover/introduction" /></p>
                    <table>
                        <th><h1>PlayStation 2</h1></th>
                        <xsl:for-each select="catalog/products/product">
                            <xsl:if test="game/@console = 'ps2'">
                                <tr>
                                    <img src="{game}" class="game-image"/>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </table>
                    <table>
                        <th><h1>XBOX</h1></th>
                        <xsl:for-each select="catalog/products/product">
                            <xsl:if test="game/@console = 'xbox'">
                                <tr>
                                    <img src="{game}" class="game-image"/>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </table>
                    <table>
                        <th><h1>Stores</h1></th>
                        <xsl:for-each select="catalog/stores/store">
                            <tr>
                                <xsl:value-of select="name" />
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
                <footer>
                    <div>
                        <h1>Contacts</h1>
                        <p>Email: <b><xsl:value-of select="catalog/contacts/email" /></b></p>
                        <p>Puhelin: <b><xsl:value-of select="catalog/contacts/phone" /></b></p>
                        <p><b><xsl:value-of select="catalog/contacts/address" /></b></p>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>