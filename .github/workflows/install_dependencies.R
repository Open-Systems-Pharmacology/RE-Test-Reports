# Install CRAN R packages
install.packages(c('dplyr','purrr','covr','readr','tidyr','webshot','spelling','readxl','data.table','gridtext','ggtext','tidyselect','testthat','rmarkdown','rsvg','svglite','cowplot'), repos = 'http://cran.us.r-project.org', type='win.binary')
# Install OSPSuite packages
download.file('https://github.com/Open-Systems-Pharmacology/rSharp/releases/download/v1.0.0/rSharp-v1.0.0-Windows-r_4.4.0.zip', destfile = "rsharp.zip", mode = "wb")
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-rutils/artifacts/ospsuite.utils.zip?pr=false', destfile = 'ospsuite.utils.zip', mode='wb')
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/tlf-library/artifacts/tlf.zip?pr=false', destfile = 'tlf.zip', mode='wb')
download.file('https://github.com/Open-Systems-Pharmacology/OSPSuite-R/releases/download/v12.1.0/ospsuite_12.1.0.zip', destfile = "ospsuite.zip", mode = "wb")
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-reportingengine/artifacts/ospsuite.reportingengine.zip?pr=false', destfile = 'ospsuite.reportingengine.zip', mode='wb')
unzip("rsharp.zip")
rSharp_archive <- list.files( pattern = "rSharp.*\\.zip")
install.packages(rSharp_archive, repos = NULL, type = "binary")
install.packages("ospsuite.utils.zip", repos = NULL, type = "binary")
install.packages("tlf.zip", repos = NULL, type = "binary")
install.packages("ospsuite.zip", repos = NULL, type = "binary")
install.packages('ospsuite.reportingengine.zip', repos = NULL, type = 'binary')
unlink("rsharp.zip")
unlink("ospsuite-utils.zip")
unlink("tlf.zip")
unlink("ospsuite.zip")
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

