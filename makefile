export anovaweeks := 0

export colorscale := magma

Report.html: Report.Rmd Programs/04_render_report.R cleandata table_one ANOVA Plots 
	Rscript Programs/04_render_report.R
                               
cleandata: Programs/00_clean_data.R Data/course_engagement.csv
	Rscript Programs/00_clean_data.R
	
table_one: Programs/01_make_table1.R Output/data_clean.Rds
	Rscript Programs/01_make_table1.R
	
ANOVA: Programs/02_ANOVA.R Data/course_engagement.csv
	Rscript Programs/02_ANOVA.R

Plots: Programs/03_make_scatterplot_gb.R Data/course_engagement.csv
	Rscript Programs/03_make_scatterplot_gb.R

.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean
clean:
	rm -f *.hmtl
	rm -f Output/*.rds
	rm -f Output/*.png