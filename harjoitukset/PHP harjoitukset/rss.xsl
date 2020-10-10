<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
    <head>
    <title>News</title>
    </head>
    <body>
    <center>
      <table border="1">
        <tr>
          <th>title</th>
          <th>link</th>
          <th>published</th>
        </tr>
        <xsl:for-each select="channel/item">
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td>
                <xsl:variable name="hyperlink"><xsl:value-of select="link" /></xsl:variable>
                <a href="{$hyperlink}" target="_blank"><xsl:value-of select="link"/></a>
            </td>
            <td><xsl:value-of select="published"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </center>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
