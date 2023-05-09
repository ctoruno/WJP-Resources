**Issue recorded by: Carlos A. Toruño Paniagua**

## Problem:
Several cleaning issues with the current GPP

## Solutions:
1. Ensure string encoding to UTF-8 before merging (Stata)
2. Write a program to automatically detect variables missing from the Data Map (R or Python)
3. Write a program to automatically detect variables that are not in the Data Map (R or Python)
    * We will need to add a new column in the data map fflagging if the variable is multiple choice or not
4. Write a program to automatically detect miscoded value labels (R or Python)
5. When checking the routing, we need to check the non-jump as well as the jump rules (Stata)
6. Add quality checks (speeder flag, red herring, conflicting answers check, etc)
7. We can further simplify the normalizations if we had a data map that includes columns about the scale and orientation of the variable.
8. We shouldn't write manually the general info for countries (country name, code, income group). We should have this info in a separate data set and just pull the data using the country codes.

# Requirements
1. Codebook + Data Map
2. Include a short and official name for countries.
3. Use ISO three letter codes for countries
