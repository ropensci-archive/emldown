# emldown

emldown is a package for creating a helpful website based on EML metadata.

This is a project of
the [rOpenSci unconference](https://github.com/ropensci/unconf17/issues/28).

Usage:

```R
devtools::install_github("ropenscilabs/emldown")
library("emldown")
render_eml(system.file("extdata", "hampton_underice.xml", package = "emldown"))
```

## Illustration

Raw EML file:

![raw eml](illustrations/screenshot_raw_xml.png)

With `emldown`:

![emldown](illustrations/screenshot_emldown.png)
