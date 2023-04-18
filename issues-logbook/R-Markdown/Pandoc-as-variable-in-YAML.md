**Issue recorded by: Carlos A. Toruño Paniagua**

## Problem:
The first version of the country reports was run using R Markdown. More specifically, we used to run the `full_report.rmd` to obtain a PDF report. At the beginning of such file, we had the following piece of code to insert a cover page:

`\input{cover_page.tex}`

However, the content of this Tex file was static. Therefore, we had to manually modify the country name inside the `cover_page.tex` file every time we run the RMD file, preventing the code to be a 1-click script.

## Solution:
The solution was to add a customize template in the YAML header: `template: pandoc_template.tex`. This way, the `\input{cover_page.tex}` is no longer needed. This template was created by saving a local copy of the [pandoc_templates](https://github.com/jgm/pandoc-templates/blob/master/default.latex) and adding the content of cover_page.tex to this template but having the country name as a Pandoc Variable as suggested by Michael Harper in this [SO issue](https://stackoverflow.com/a/52779863). As explained by M. Harper:

> The approach of replacing variables using the pandoc notation $variable$ is only possible for the main template file defined under the template option. It won’t work for any of the includes arguments or any other external LaTeX files. See  [here](https://github.com/jgm/pandoc/issues/909)  for more details.

## Additional Notes:
The approach to produce the PDF reports using R Markdown was abandoned and we currently use HTML templates to produce the country reports.