<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="rights" match="/">

 <h4>Intellectual Rights</h4>
  <p>
    <xsl:value-of select="//dataset/intellectualRights" />
  </p>
    
</xsl:template>
</xsl:stylesheet>
  