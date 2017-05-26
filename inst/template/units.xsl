<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="units" match="/">
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>unit name</th>
        <th>parent SI unit</th>
        <th>unit type</th>
        <th>description</th>
      </tr>
      <xsl:for-each select="//unitList/unit">
        <tr>
          <td><xsl:value-of select="@name"/></td>
          <td><xsl:value-of select="@parentSI"/></td>
          <td><xsl:value-of select="@unitType"/></td>
          <td><xsl:value-of select="description"/></td>
        </tr>
      </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>