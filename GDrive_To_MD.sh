search_path="/Users/RK/DriveGRK/"

output_extension="images"
output_path="/Users/RK/Desktop/Final"

for year in {2000..2023}; do
    search_year=$((year + 1))
    output_file="${year}-${output_extension}.md"

	## IDEAS - Webloc, HTML, GFORM

	# DOCS---GDOC-GSHEET-GSLIDES-DOCX-DOC-XLSX-XLS-CSV
	# find ${search_path} -type f \( -iname "*.gdoc" -o -iname "*.gsheet" -o -iname "*.gslides" -o -iname "*.gform" -o -iname "*.docx" -o -iname "*.doc" -o -iname "*.xlsx" -o -iname "*.xls" -o -iname "*.csv" \) -newermt "${year}-01-01 00:00:00" ! -newermt "${search_year}-01-01 00:00:00" -exec basename {} \; > "${output_path}/${output_file}"

	# PDFS	
	# find ${search_path} -type f \( -iname "*.pdf" \) -newermt "${year}-01-01 00:00:00" ! -newermt "${search_year}-01-01 00:00:00" -exec basename {} \; > "${output_path}/${output_file}"

	# IMAGES---JPG-JPEG-PNG-SVG-WEBP-GIF-PSD-AI-DRAWIO
    find ${search_path} -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.svg" -o -iname "*.webp" -o -iname "*.gif" -o -iname "*.psd" -o -iname "*.ai" -o -iname "*.drawio" \) -newermt "${year}-01-01 00:00:00" ! -newermt "${search_year}-01-01 00:00:00" -exec basename {} \; > "${output_path}/${output_file}"

done
