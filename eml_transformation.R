library("xslt")

eml <- read_xml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
style <- read_xml("style/eml/eml.xsl")
html <- xml_xslt(eml, style)
write_html(html, "test.html")

# datatable
library("EML")
eml <- read_eml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
dt <- EML::eml_get(eml, "dataTable")
eml <- read_xml("dataTable.xml")
style <- read_xml("style/eml/eml-datatable.xsl")
html <- xml_xslt(eml, style)
write_html(html, "test_datatable.html")