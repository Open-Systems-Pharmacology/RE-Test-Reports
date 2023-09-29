library(testthat)
library(ospsuite.reportingengine)

# This line install the java script app that takes snapshots of reports
webshot::install_phantomjs()

test_dir(".github/workflows/tests", reporter = "check", encoding = "utf-8")
