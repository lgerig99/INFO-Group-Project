Report.html: Programs/04_render_report.R Report.Rmd
	Rscript Programs/04_render_report.R
                               
Output/data_clean.rds: Programs/00_clean_data.R Output/data_clean.rds
	Rscript Programs/00_clean_data.R
	
Output/table_one.rds: Programs/01_make_table1.R Output/table_one.rds
	Rscript Programs/01_make_table1.R
	

.PHONY: clean
clean:
	rm -f Output/*.rds