# emldown

*emldown* is a package for creating a helpful website based on EML metadata.

This is a project of
the [rOpenSci unconference](https://github.com/ropensci/unconf17/issues/28).

Usage:

```R
devtools::install_github("ropenscilabs/emldown")
library("emldown")
render_eml(system.file("extdata", "hampton_underice.xml", package = "emldown"))
```

## Illustration

Raw EML file: :anguished: :weary: :unamused:

![raw eml](illustrations/screenshot_raw_xml.png)

With `emldown`: :relieved: :satisfied: :sunglasses:

![emldown](illustrations/screenshot_emldown.png)

## Working example

A quick [example website](http://aammd.info/emldown/test.html)

## Gifs

The resulting website is based on [Bootstrap](https://getbootstrap.com/) and has some interactive components:

![demo1](illustrations/emldown_demo1.gif)

Geographic information turns into a map, made using [leaflet](https://rstudio.github.io/leaflet/):

![demo2](illustrations/emldown_demo2.gif)

Right now, we are able to capture some of the most common parts of Ecological Metadata Language, including the Title, Abstract, Authors, Keywords, Coverage (where in space and time the samples were taken), the Data Tables and Units associated with these.

![demo3](illustrations/emldown_demo3.gif)