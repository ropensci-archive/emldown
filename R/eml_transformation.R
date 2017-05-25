#' Title
#'
#' @return
#' @export
#'
eml_transform <- function(){
  eml <- xml2::read_xml(system.file("extdata/Rodents_snakes_and_raptors.xml", package = "emldown"))
  style <- xml2::read_xml((system.file("xsl/eml/eml.xsl", package = "emldown")))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, "inst/test.html")
  
  # datatable
  eml <- xml2::read_xml(system.file("extdata/Rodents_snakes_and_raptors.xml", package = "emldown"))
  dt <- EML::eml_get(eml, "dataTable")
  eml <- xml2::read_xml(system.file("dataTable.xml", package="emldown"))
  style <- xml2::read_xml(system.file("style/eml/eml-datatable.xsl", package = "emldown"))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, "inst/test_datatable.html")
}

