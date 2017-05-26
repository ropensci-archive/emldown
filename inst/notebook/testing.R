
eml <- xml2::read_xml("inst/extdata/hampton_underice.xml")
style <- xml2::read_xml("inst/template/bootstrap.xsl")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")


eml <- xml2::read_xml("inst/extdata/Lake_Baikal_Plankton.xml")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")


## This is for Kara
eml <- xml2::read_xml("../extdata/hampton_underice.xml")
style <- xml2::read_xml("../template/bootstrap.xsl")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")
