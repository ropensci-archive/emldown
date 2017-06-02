<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="datatable" match="/">
    <xsl:for-each select=".//dataTable">
    <br/>
    <tr><h4>
      <td><xsl:value-of select="entityName"/></td>
      <td>, <xsl:value-of select="numberOfRecords"/> records</td>,
      <td><xsl:value-of select="entityDescription"/></td></h4>
    </tr>
    <br/>
    <tr>
    Physical:<xsl:text>&#xA0;</xsl:text><xsl:value-of select="physical/objectName"/>
    </tr>
    <div class="table-responsive">
<table class="table table-striped">
      <tr>
        <th>attribute name</th>
        <th>definition</th>
        <th>format, unit or codes</th>
      </tr>
      <xsl:for-each select="attributeList/attribute">
        <tr>
          <td><xsl:value-of select="attributeName"/></td>
          <td><xsl:value-of select="attributeDefinition"/></td>
          <td><xsl:value-of select="measurementScale/dateTime"/><xsl:value-of select="measurementScale/ratio/unit"/><xsl:value-of select="measurementScale/interval/unit"/><xsl:for-each select="measurementScale/nominal/nonNumericDomain/enumeratedDomain/codeDefinition"><xsl:value-of select="code"/><xsl:text>&#xA0;=&#xA0;</xsl:text><xsl:value-of select="definition"/> <xsl:text>&#xA0;</xsl:text></xsl:for-each></td>
        </tr>
      </xsl:for-each>
    </table>
    </div>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
