<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head/>
      <body>
        <xsl:for-each select="tietueet/tietue">
          <p>
            <xsl:value-of select="kuvateksti"/>
          </p>
          <p>
            <img src="{kuva}"/>
          </p>
          <p>
            <a href="{linkki}">
              <xsl:value-of select="linkki"/>
            </a>
          </p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>