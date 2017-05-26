<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="dataset" match="/">

  <h1><xsl:value-of select="//dataset/title" /></h1>
  
  <p class="lead"><xsl:value-of select="//dataset/abstract" /></p>


  <!-- <h3><xsl:value-of select="//metadataProvider" /></h3> -->
  
  
</xsl:template>
</xsl:stylesheet>