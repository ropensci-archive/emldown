
eml <- xml2::read_xml("inst/extdata/Rodents_snakes_and_raptors.xml")
style <- xml2::read_xml("inst/xsl/eml/eml.xsl", package = "emldown")
html <- xslt::xml_xslt(eml, style)
xml2::write_html(html, "test.html")
browseURL("test.html")

