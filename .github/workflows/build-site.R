# R Script to be implemented through github action
# and to be used to deploy webpages of the test reports

# Step 1:
# Creates the appropriate yaml configuration file for the pkgdown website
reportMapping <- jsonlite::fromJSON("tests/testthat/report-mapping.json")
hasReference <- reportMapping$Reference

websiteConfig <- c(
  "template:",
  "  bootstrap: 5",
  "",
  "home:",
  "  links:",
  "  - text: OSPSuite-R",
  "    href: https://www.open-systems-pharmacology.org/OSPSuite/",
  "  - text: OSPSuite Reporting Engine",
  "    href: https://www.open-systems-pharmacology.org/OSPSuite.ReportingEngine/",
  "",
  "navbar:",
  "  structure:",
  "    left:  [articles, qualification]",
  "    right: [search]",
  "  components:",
  "    articles:",
  "      text: Reports",
  "      menu:",
  paste0(
    "      - text: ",
    reportMapping$Report[hasReference],
    "\n",
    "        href: articles/", reportMapping$Report[hasReference], ".html"
  ),
  "    qualification:",
  "      text: Qualification Reports",
  "      menu:",
  paste0(
    "      - text: ",
    reportMapping$Report[!hasReference],
    "\n",
    "        href: articles/", reportMapping$Report[!hasReference], ".html"
  ),
  ""
)
writeLines(websiteConfig, con = "_pkgdown.yml")


# Step 2:
# Prepare the articles folder to include the appropriate articles
dir.create("vignettes")
for (reportFolder in reportMapping$Report) {
  file.copy(
    from = file.path("tests/Reports", reportFolder, "Report.md"),
    to = file.path("vignettes", paste0(reportFolder, ".Rmd")),
    overwrite = TRUE
  )
}

# Initialize website
pkgdown::init_site()

# Step 3:
# Build the articles
for (reportFolder in reportMapping$Report) {
  file.copy(
    from = list.files(file.path("tests/Reports", reportFolder), full.names = TRUE),
    to = "vignettes",
    overwrite = TRUE,
    recursive = TRUE
  )
  pkgdown::build_article(reportFolder)
  unlink("vignettes/images", recursive = TRUE)
}
# pkgdown::build_articles_index()

# Step 4:
# Build home page
# For home page it is possible to create index.md
# That will provide shorter and more useful regarding the tests
pkgdown::build_home()
