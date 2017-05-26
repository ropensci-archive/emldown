<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="geographic_coverage" match="/">

        <div class="row">        
            <xsl:for-each select="//dataset/coverage/geographicCoverage">
                <div class="col-sm-3">

                    <p><b><xsl:value-of select="geographicDescription"/></b></p>
                    
                    <p>
                        West: <xsl:value-of select="boundingCoordinates/westBoundingCoordinate"/><br/>
                        East: <xsl:value-of select="boundingCoordinates/eastBoundingCoordinate"/><br/>
                        North: <xsl:value-of select="boundingCoordinates/northBoundingCoordinate"/><br/>
                        South: <xsl:value-of select="boundingCoordinates/southBoundingCoordinate"/>
                    </p>

                </div>
                
            </xsl:for-each>

        </div>
        
    </xsl:template>
</xsl:stylesheet>

