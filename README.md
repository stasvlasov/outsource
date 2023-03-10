[![R-CMD-check](https://github.com/stasvlasov/outsource/workflows/R-CMD-check/badge.svg)](https://github.com/stasvlasov/outsource/actions)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/stasvlasov/outsource)


# Description

The package provides its main function `outsource` that evaluates some R script and binds what this script returns to `.` variable and then evaluates provided expression with this variable added to the evaluation environment.


# Installation

    devtools::install_github("stasvlasov/outsource")

