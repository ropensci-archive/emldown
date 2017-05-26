<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="datatable" match="/">
    <xsl:for-each select=".//dataTable">
    <tr>
      <td><xsl:value-of select="entityName"/></td>
    </tr>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>