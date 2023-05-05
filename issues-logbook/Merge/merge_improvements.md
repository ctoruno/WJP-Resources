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