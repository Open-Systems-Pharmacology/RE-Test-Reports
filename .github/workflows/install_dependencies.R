install.packages(c('dplyr','purrr','covr','readr','tidyr','webshot','spelling','readxl','data.table','gridtext','ggtext','tidyselect','testthat','rmarkdown'), repos = 'http://cran.us.r-project.org', type='win.binary')
install.packages('https://github.com/Open-Systems-Pharmacology/rClr/releases/download/v0.9.1/rClr_0.9.1.zip', repos = NULL, type = 'binary')
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-rutils/artifacts/ospsuite.utils.zip?pr=false', destfile = 'ospsuite.utils.zip', mode='wb')
install.packages('ospsuite.utils.zip', repos = NULL, type = 'binary')
unlink('ospsuite.utils.zip')
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/tlf-library/artifacts/tlf.zip?pr=false', destfile = 'tlf.zip', mode='wb')
install.packages('tlf.zip', repos = NULL, type = 'binary')
unlink('tlf.zip')
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-r/artifacts/ospsuite.zip?pr=false', destfile = 'ospsuite.zip', mode='wb')
install.packages('ospsuite.zip', repos = NULL, type = 'binary')
unlink('ospsuite.zip')
download.file('https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-reportingengine/artifacts/ospsuite.reportingengine.zip?pr=false', destfile = 'ospsuite.reportingengine.zip', mode='wb')
install.packages('ospsuite.reportingengine.zip', repos = NULL, type = 'binary')
unlink('ospsuite.reportingengine.zip')
