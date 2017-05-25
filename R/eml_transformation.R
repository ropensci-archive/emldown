#' Title
#'
#' @return
#' @export
#'
eml_transform <- function(){
  eml <- xml2::read_xml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
  style <- xml2::read_xml((system.file("inst/style/eml/eml.xsl", package = "emldown")))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, "inst/test.html")
  
  # datatable
  eml <- xml2::read_eml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
  dt <- EML::eml_get(eml, "dataTable")
  eml <- xml2::read_xml("dataTable.xml")
  style <- xml2::read_xml(system.file("inst/style/eml/eml-datatable.xsl", package = "emldown"))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, "inst/test_datatable.html")
}

