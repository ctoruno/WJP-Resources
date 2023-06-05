cls

/*=====================================================================================================================================
Project:		DO FILE TITLE
Author(s):		Author #1
				Author #2
Dependencies:  	World Justice Project
Creation Date:	Month-Year
This version:	Month Day, Year
======================================================================================================================================*/

/*=====================================================================================================================================
					0. Settings
=====================================================================================================================================*/

*--- Stata Version
version 15.1

*--- Required packages:
* NONE


*--- Defining directories paths to SharePoint:

*------ (a) Carlos Toruno:
if (inlist("`c(username)'", "carlostorunopaniagua")) {
	global path2SP "/Users/carlostorunopaniagua/OneDrive - World Justice Project/.."
}

*------ (b) Santiago Pardo:
else if (inlist("`c(username)'", "santiagopardo")) {
	global path2SP "/Users/santiagopardo/OneDrive - World Justice Project/..."
}

*------ (c) Any other user: PLEASE INPUT YOUR PERSONAL PATH TO THE SHAREPOINT DIRECTORY:
else {
	global path2SP "INSERT PATH TO WORKING DIRECTORY HERE"
}

/*=====================================================================================================================================
					1. Data Loading (if necessary)
=====================================================================================================================================*/

*--- Task 1

*------ (a) Sub-task 1.a

*------ (b) Sub-task 1.b



*--- Task 2

*------ (a) Sub-task 2.a

*------ (b) Sub-task 2.b


/*=====================================================================================================================================
					2. Section Header
=====================================================================================================================================*/

*--- Task 1

*------ (a) Sub-task 1.a

*------ (b) Sub-task 1.b



*--- Task 2

*------ (a) Sub-task 2.a

*------ (b) Sub-task 2.b
