#' Title
#'
#' @return
#' @export
#'
#' @examples
eml_transform <- function(){
  library("xslt")
  
  eml <- read_xml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
  style <- read_xml((system.file("inst/style/eml/eml.xsl", package = "emldown")))
  html <- xml_xslt(eml, style)
  write_html(html, "inst/test.html")
  
  # datatable
  library("EML")
  eml <- read_eml(system.file("xsd/test/eml-datasetWithUnits.xml", package = "EML"))
  dt <- EML::eml_get(eml, "dataTable")
  eml <- read_xml("dataTable.xml")
  style <- read_xml(system.file("inst/style/eml/eml-datatable.xsl", package = "emldown"))
  html <- xml_xslt(eml, style)
  write_html(html, "inst/test_datatable.html")
}

