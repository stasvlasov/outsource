[![R-CMD-check](https://github.com/stasvlasov/outsource/workflows/R-CMD-check/badge.svg)](https://github.com/stasvlasov/outsource/actions)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/stasvlasov/outsource)


# Description

The package provides its main function `outsource` that evaluates some R script and binds what this script returns to `.` variable and then evaluates provided expression with this variable added to the evaluation environment.


# Installation

    devtools::install_github("stasvlasov/outsource")

Suggested packages:

<table id="org3f73a77" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-right" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">name</th>
<th scope="col" class="org-right">version</th>
<th scope="col" class="org-left">comment</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left"><a href="https://github.com/markvanderloo/tinytest/blob/master/pkg/README.md">tinytest</a></td>
<td class="org-right">1.3.1</td>
<td class="org-left">used for testing</td>
</tr>
</tbody>
</table>

