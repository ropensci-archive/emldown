<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="otherentity" match="/">
        <table class="table">
    <xsl:for-each select=".//otherEntity">
    <br/>
    <tr>
      <td><xsl:value-of select="entityName"/></td>
    </tr>
    </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>
