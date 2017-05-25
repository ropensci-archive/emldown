
eml <- xml2::read_xml("inst/extdata/Kara_EML.xml")
style <- xml2::read_xml("inst/xsl/eml/eml.xsl", package = "emldown")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")


eml <- xml2::read_xml("inst/extdata/Lake_Baikal_Plankton.xml")
style <- xml2::read_xml("inst/xsl/eml/eml.xsl", package = "emldown")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")
