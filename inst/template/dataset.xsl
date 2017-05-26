<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="dataset" match="/">

  <h1><xsl:value-of select="//dataset/title" /></h1>
  
  <p class="lead"><xsl:value-of select="//dataset/abstract" /></p>

  <h5>Metadata Provider</h5>
  <p>
  <xsl:value-of select="//metadataProvider/individualName/givenName"/>&#160;
  <xsl:value-of select="//metadataProvider/individualName/surName"/>
  </p>
  
  <h5>Authors</h5>
  
  <p>
  <xsl:for-each select="//dataset/creator/individualName">
   <xsl:value-of select="givenName"/>&#160;<xsl:value-of select="surName"/>
   <xsl:if test="position() != last()">
      <xsl:text>,&#160;</xsl:text>
   </xsl:if>
  </xsl:for-each>
  </p>
  
  <h5>Keywords</h5>
  
  <p>
  <xsl:for-each select="//dataset/keywordSet/keyword">
   <ul>
     <li><xsl:value-of select="."/></li>
   </ul>
  </xsl:for-each>
  </p>
  
  <h5>Intellectual Rights</h5>
  <p>
    <xsl:value-of select="//dataset/intellectualRights" />
  </p>
  
</xsl:template>
</xsl:stylesheet>