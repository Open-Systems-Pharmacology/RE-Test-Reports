# Functions from file names starting with helper
# are loaded for every test
# The helper functions here wrap test failures as warnings
# to get testthat report even if some tests fail

#' @title expectEqual
#' @description
#' Root function for comparing content of files are equal
#' displaying `label` if not
#' @param x Content to compare
#' @param y Reference content to be compared with
#' @param label Displayed label
expectEqual <- function(x, y, label) {
  expect_true(all(x == y), label = label)
}

#' @title expectFiles
#' @description
#' Compare file names
#' @param testFiles Content to compare
#' @param refFiles Reference content to be compared with
expectFiles <- function(testFiles, refFiles) {
  return(expectEqual(
    x = testFiles,
    y = refFiles,
    label = setdiff(union(testFiles, refFiles), intersect(testFiles, refFiles))
  ))
}

#' @title expectKnownReport
#' @description
#' Compare content of reporting engine report
#' @param testReport Content to compare
#' @param refReport Reference content to be compared with
expectKnownReport <- function(testReport, refReport) {
  return(expectEqual(
    x = readLines(testReport),
    y = readLines(refReport),
    label = testReport
  ))
}

#' @title expectKnownImage
#' @description
#' Compare content of an image
#' @param testFile Content to compare
#' @param refFile Reference content to be compared with
expectKnownImage <- function(testFile, refFile) {
  if (grepl(pattern = "svg", x = testFile)) {
    return(expectEqual(
      x = rsvg::rsvg(testFile),
      y = rsvg::rsvg(refFile),
      label = testFile
    ))
  }
  return(expectEqual(
    x = png::readPNG(source = testFile),
    y = png::readPNG(source = refFile),
    label = testFile
  ))
}

