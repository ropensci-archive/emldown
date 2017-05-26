#' @importFrom leaflet "%>%"
map_geographical_coverage <- function(eml){
  name <- xml2::xml_find_all(eml, "//geographicCoverage/geographicDescription")
  name <- unlist(xml2::as_list(name))
  
  west <- xml2::xml_find_all(eml, "//geographicCoverage/boundingCoordinates/westBoundingCoordinate")
  west <- as.numeric(unlist(xml2::as_list(west)))

  east <- xml2::xml_find_all(eml, "//geographicCoverage/boundingCoordinates/eastBoundingCoordinate")
  east <- as.numeric(unlist(xml2::as_list(east)))
  
  north <- xml2::xml_find_all(eml, "//geographicCoverage/boundingCoordinates/northBoundingCoordinate")
  north <- as.numeric(unlist(xml2::as_list(north)))
  
  south <- xml2::xml_find_all(eml, "//geographicCoverage/boundingCoordinates/southBoundingCoordinate")
  south <- as.numeric(unlist(xml2::as_list(south)))
  
  geo_info <- data.frame(name = name,
                         west = west, east = east,
                         south = south, north = north)
  
  map <- leaflet::leaflet(geo_info) %>% leaflet::addTiles() %>%
    leaflet::addRectangles(
      lng1 = west, lat1 = south,
      lng2 = east, lat2 = north,
      popup = name,
      fillColor = "transparent"
    )
  
  htmlwidgets::saveWidget(map, file = "map.html", selfcontained = TRUE)
}