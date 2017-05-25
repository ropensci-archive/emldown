
eml <- xml2::read_xml(system.file("xsd/test/eml-datasetWithUnits.xml", package="EML"))
style <- xml2::read_xml("inst/xsl/eml/eml.xsl", package = "emldown")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")
