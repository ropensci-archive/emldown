<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="head.xsl"/> 
<xsl:include href="nav.xsl"/>
<xsl:include href="geographic_coverage.xsl"/>
<xsl:include href="dataset.xsl"/>
<xsl:include href="datatable.xsl"/>
<xsl:include href="units.xsl"/>
<xsl:include href="otherentity.xsl"/>
<xsl:template match="/">
<html lang="en">
  
  <xsl:call-template name="head"/>
  <body>
  <xsl:call-template name="nav"/>
    <div class="container" id="dataset_info">
      <div class="starter-template">
        <xsl:call-template name="dataset"/>
      </div>
    </div>
    <div class="container" id="geographic">
      <h3>Geographic coverage</h3>
      <xsl:call-template name="geographic_coverage"/>
    </div><!-- /.container -->
 
     <div class="container" id="datatable">
     <h3>Data tables</h3>
      <xsl:call-template name="datatable"/>
    </div><!-- /.container -->
    
    <div class="container" id="units">
     <h3>Custom units</h3>
      <xsl:call-template name="units"/>
    </div><!-- /.container -->
 
     <div class="container" id="otherentity">
     <h3>Other entities</h3>
      <xsl:call-template name="otherentity"/>
    </div><!-- /.container -->
 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
</html>

</xsl:template>
</xsl:stylesheet>
