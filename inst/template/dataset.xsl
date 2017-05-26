<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="dataset" match="/">

  <h1><xsl:value-of select="//dataset/title" /></h1>
  <h2><a href="#datatable">
<span class="glyphicon glyphicon-list-alt"></span>
 Data table(s) <span class="badge"><xsl:value-of select="count(//dataTable)" /></span></a></h2>
  <h2><a href="#otherentity">
<span class="glyphicon glyphicon-list-alt"></span>
 Other entity(ies) <span class="badge"><xsl:value-of select="count(//otherEntity)" /></span></a></h2>
 <div class="container">
  <div class="jumbotron">
  <p class="lead"><xsl:value-of select="//dataset/abstract" /></p>
</div>
</div>
  <h5>Metadata Provider</h5>
  <p>
  <xsl:value-of select="//metadataProvider/individualName/givenName"/>&#160;
  <xsl:value-of select="//metadataProvider/individualName/surName"/>
  </p>
  
  <div class="container">
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1">Author list</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <ul class="list-group">
        <xsl:for-each select="//dataset/creator">
          <li class="list-group-item">
            <xsl:value-of select="individualName/givenName"/>&#160;
            <xsl:value-of select="individualName/surName"/>&#160;
            <xsl:value-of select="electronicMailAddress"/>
          </li>
        </xsl:for-each>
        </ul>
        <div class="panel-footer">Footer</div>
      </div>
    </div>
  </div>
  </div>

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