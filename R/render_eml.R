##' Render EML metadata into a webpage
##'
##' Pass in an xml file of EML metadata and generate a nice webpage describing
##' the dataset.
##' 
##' @title Render EML
##' @param file 
##' @param open Whether to open the file in a browser. Defaults to TRUE.
##' @param outfile Name of output file.
##' @return HTML file containing dataset information
##' @author Kara Woo
##' @export
render_eml <- function(file, open = TRUE, outfile = "test.html") {
  eml <- xml2::read_xml(file)
  style <- xml2::read_xml(system.file("template", "bootstrap.xsl",
                                      package = "emldown"))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, outfile)
  if (open == TRUE) {
    browseURL(outfile)
  }
}
