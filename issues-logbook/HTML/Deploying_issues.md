# LAC Reports Deploying issues
---

Cellar-Door is the company in charge of deploying the HMTL files in our website. They wanted to keep the LAC country report files in a separate repository from the main website https://worldjusticeproject.org. As Ivan Chaquea explained:

> For the https://worldjusticeproject.org/ site we wanted to keep these folders separate from the git code repository, and found a solution that let us upload these files through SFTP to the drupal file folder (sites_default_files_rule-of-law_{folder-year}), where they get cached by the server, while being served from the root domain path (our-work_research-and-data_rule-of-law/{folder-date}).  

However, this bring some issues in how the files are referred in their relative paths. As such, styles, assets and images are not properly loaded because their paths need to be modified. Here is a list of all the changes that we need to perform to each HTML file:

1. Update all path references to `assets`. This can be done  by making use of any **find and replace** method in which we search for every occurrence of the string: `assets/`  and we replace it for the longer string `/sites/default/files/rule-of-law/{COUNTRY-YEAR}/assets/`

	Where {COUNTRY-YEAR} refers to the country and year of the report in lower caps and replacing spaces with an hyphen (-). For example: trinidad-and-tobago-2022
	
2. Update the reference to the `edit_styles.css` file. This can be done by updating the `href` reference  in the following line of code: 
		
	`<link rel=“icon” href=“assets/favicon.ico” type=“icon”>`

	for the longer reference:
				
	`<link rel=“icon” href=“/sites/default/files/rule-of-law/{COUNTRY-YEAR}/assets/favicon.ico” type=“icon”>`

	Where {COUNTRY-YEAR} refers to the country and year of the report in lower caps and replacing spaces with an hyphen (-). For example: trinidad-and-tobago-2022

3. Update the source for all charts and images. This can be done  by making use of any **find and replace** method in which we search for every occurrence of the string: `charts_and_images/`  and we replace it for the longer string `/sites/default/files/rule-of-law/{COUNTRY-YEAR}/charts_and_images/`

	Where {COUNTRY-YEAR} refers to the country and year of the report in lower caps and replacing spaces with an hyphen (-). For example: trinidad-and-tobago-2022

4. Update the path to the PDF report. This can be done by updating the `src` reference  in the following line of code:

		<a id="MenuDownload" class="btn-level1 menuOpt" onclick="window.open('Report_WJP.pdf')">
    		<img src="assets/images_layout/icnDownload.svg" class="mx-2"><span>Download</span>
    	</a>

	for the longer reference:

		<a id="MenuDownload" class="btn-level1 menuOpt" onclick="window.open('/sites/default/files/rule-of-law/{COUNTRY-YEAR}/Report_WJP.pdf')">
    		<img src="assets/images_layout/icnDownload.svg" class="mx-2"><span>Download</span>
    	</a>
	
	Where {COUNTRY-YEAR} refers to the country and year of the report in lower caps and replacing spaces with an hyphen (-). For example: trinidad-and-tobago-2022

5. Update the source reference in the WJP iframe menu. This can be done by replacing the `src` in the following line of code: 
		
		`<iframe id="embedMenu" src="https://reports-world-justice-project.pantheonsite.io/wjp-index"></iframe>`

	for the following shorter reference:

		`<iframe id="embedMenu" src="https://worldjusticeproject.org/wjp-index"></iframe>`

6. Check that all image files related to the charts in the report are correctly named with the panel letter in upper case. For example, renaming any file named as `figure_16a` as `figure_16A`. This renaming happens in the file. However, you would also need to check that all files in the index.html are referred with this same convention.