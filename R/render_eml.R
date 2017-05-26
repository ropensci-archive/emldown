##' Render EML metadata into a webpage
##'
##' Pass in an xml file of EML metadata and generate a nice webpage describing
##' the dataset.
##' 
##' @title Render EML
##' @param file A valid Ecological Metadata Language file to be rendered to html.
##' @param open Whether to open the file in a browser. Defaults to TRUE.
##' @param outfile Name of output file.
##' @param publish_mode TRUE. If TRUE the website is pretty without warnings for weird stuff.
##' @return HTML file containing dataset information
##' @author Kara Woo
##' @export
##' @examples 
##' render_eml(system.file("extdata", "Rodents_snakes_and_raptors.xml", package = "emldown"))
render_eml <- function(file, open = TRUE, outfile = "test.html",
                       publish_mode = TRUE, output_dir = "/docs") {
  eml <- xml2::read_xml(file)
  style <- xml2::read_xml(system.file("template", "bootstrap.xsl",
                                      package = "emldown"))
  html <- xslt::xml_xslt(eml, style)
  # make map
  map_geographical_coverage(eml)
  xml2::write_html(html, outfile)
  # add custom css
  write_custom_css(publish_mode)
  
  if (open == TRUE) {
    browseURL(outfile)
  }

}


#' Write a custom css file
#' 
#' The custom.css files make some small changes to the Bootstrap template.
#' Currently this is written into the root directory of your project.
#' 
#' @param publish_mode TRUE. If TRUE the website is pretty without warnings for 
#'   weird stuff.
#'   
#' @return Prints a custom.css file into the root directory.
#' @export
write_custom_css <- function(publish_mode){
  
  # get the css we always use
  main_css <- readLines(system.file("template",
                                    "main_custom.css",
                                    package = "emldown"))
  
  edu_css <- readLines(system.file("template",
                                   "educational_custom.css",
                                   package = "emldown"))
  
  writeLines(main_css, con = "custom.css")
  
  if(publish_mode){
    cat(edu_css, file= "custom.css", append = TRUE)
  }
}