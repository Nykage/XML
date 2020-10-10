<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
    <head>
    <title>Clients</title>
    </head>
    <body>
    <center>
      <table border="1">
        <tr>
          <th>idClient</th>
          <th>FirstName</th>
          <th>LastName</th>
        </tr>
        <xsl:for-each select="clients/client">
          <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="firstname"/></td>
            <td><xsl:value-of select="lastname"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </center>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
