#' Title
#'
#' @return
#' @export
#'
eml_transform <- function(){
  eml <- xml2::read_xml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
  style <- xml2::read_xml((system.file("style/eml/eml.xsl", package = "emldown")))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, "inst/test.html")
  
  # datatable
  eml <- EML::read_eml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
  dt <- EML::eml_get(eml, "dataTable")
  eml <- xml2::read_xml(system.file("dataTable.xml", package="emldown"))
  style <- xml2::read_xml(system.file("style/eml/eml-datatable.xsl", package = "emldown"))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, "inst/test_datatable.html")
}

