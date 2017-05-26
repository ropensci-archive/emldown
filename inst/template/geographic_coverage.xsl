<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="geographic_coverage" match="/">

      <p>Bounding Coordinates:</p>
      
      <p>west: <xsl:value-of select="//dataset/coverage/geographicCoverage/boundingCoordinates/westBoundingCoordinate"/></p>
      <p>east: <xsl:value-of select="//dataset/coverage/geographicCoverage/boundingCoordinates/eastBoundingCoordinate"/></p>
      <p>north: <xsl:value-of select="//dataset/coverage/geographicCoverage/boundingCoordinates/northBoundingCoordinate"/></p>
      <p>south: <xsl:value-of select="//dataset/coverage/geographicCoverage/boundingCoordinates/southBoundingCoordinate"/></p>
         
</xsl:template>
</xsl:stylesheet>

