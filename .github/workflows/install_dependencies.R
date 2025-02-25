# Install CRAN R packages
install.packages(c('dplyr','purrr','readr','tidyr','webshot','spelling','readxl','data.table','tidyselect','openxlsx'), repos = 'http://cran.us.r-project.org', type='win.binary')
install.packages(c('gridtext','ggtext','showtext','testthat','covr','rmarkdown','pkgdown'), repos = 'http://cran.us.r-project.org', type='win.binary')
install.packages(c("remotes", "pak"))

pak::pak("Open-Systems-Pharmacology/OSPSuite.RUtils")
pak::pak("Open-Systems-Pharmacology/rSharp")
pak::pak("Open-Systems-Pharmacology/TLF-Library")
pak::pak("Open-Systems-Pharmacology/OSPSuite-R")

download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-reportingengine/artifacts/ospsuite.reportingengine.zip?pr=false', destfile = 'ospsuite.reportingengine.zip', mode='wb')
install.packages('ospsuite.reportingengine.zip', repos = NULL, type = 'binary')
unlink('ospsuite.reportingengine.zip')

# Setup PK-Sim portable and Qualification Runner released versions
# Rename their sub-folder to prevent path issues because the use version numbers
# Note: there may be a better way to do this
download.file('https://github.com/Open-Systems-Pharmacology/QualificationRunner/releases/download/v11.1/qualificationrunner-portable-setup_11.1.130.zip', destfile = 'qualificationrunner.zip')
unzip('qualificationrunner.zip', exdir = "QualificationRunner")
unlink('qualificationrunner.zip')
file.rename(from = list.files("QualificationRunner", full.names = TRUE), to = "QualificationRunner/QualificationRunner")
download.file('https://github.com/Open-Systems-Pharmacology/PK-Sim/releases/download/v11.3.208/pk-sim-portable-setup.zip', destfile = 'pk-sim.zip')
unzip('pk-sim.zip', exdir = "PK-Sim")
unlink('pk-sim.zip')
file.rename(from = list.files("PK-Sim", full.names = TRUE), to = "PK-Sim/PK-Sim")

