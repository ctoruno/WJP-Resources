**Issue recorded by: Carlos A. Toruño Paniagua**

## Problem:
R Markdown will always assume that the Knit directory is the same where the RMD file is stored. It is only after running the /r setup/ code chunk that it will change to the directory specified in the settings. This issue is only important when running the script without compiling. When compiling the document, the directories are correctly defined from the beginning.

## Solution:
Leave the `{r setup, include = F}`  code chunk with only the Knit settings. All the data loading, sourcing and other actions that require following the project directory instead of the RMD file directory should be in a separate code chunk. In this case, named  `{r sourcing, include = F}`.

## Additional Notes:
None.