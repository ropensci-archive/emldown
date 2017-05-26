##' Render EML metadata into a webpage
##'
##' Pass in an xml file of EML metadata and generate a nice webpage describing
##' the dataset.
##' 
##' @title Render EML
##' @param file A valid Ecological Metadata Language file to be rendered to html.
##' @param open Whether to open the file in a browser. Defaults to TRUE.
##' @param outfile Name of output file.
##' @return HTML file containing dataset information
##' @author Kara Woo
##' @export
##' @examples 
##' render_eml(system.file("extdata", "Rodents_snakes_and_raptors.xml", package = "emldown"))
render_eml <- function(file, open = TRUE, outfile = "test.html") {
  eml <- xml2::read_xml(file)
  style <- xml2::read_xml(system.file("template", "bootstrap.xsl",
                                      package = "emldown"))
  html <- xslt::xml_xslt(eml, style)
  xml2::write_html(html, outfile)
  if (open == TRUE) {
    browseURL(outfile)
  }
  
  # add custom css
  write_custom_css()
}


write_custom_css <- function(){
  custom_css <- 'body { padding-top: 70px; }'
  writeLines(custom_css, "custom.css")
}