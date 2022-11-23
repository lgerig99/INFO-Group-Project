Greetings fellow Info 550 students! The following provides a description of the contents of repository along with instructions on how to assemble the report.

# Content of the Report

The contents of the report will assemble a final report for the engagement dataset. The final report will knit into an HTML document that will print out a summary of each of the components of our analysis. It will also contain a brief description of the dataset and the intended analysis.

# Contents of the Repository

The project directory contains the directory with the following:
  
  makefile -> for compiling the report and toggling the parameters
  
  report.Rmd -> report R markdown that will assemble into an HTML when made
  
  README.md -> instructions for how to create the report
  
  .gitignorefile -> Available for if we wish to supress output from our GitHub
  
  Along with 3 subfolders:

  1) Data -> Contains the engagement report data
    
  
  2) Code -> Contains the R scripts used to create the report (programs 0-4)
     00 = Creating clean dataset that is used in subsequent programs
     01 = Creating summary table that prints an output 
     02 = Conducting ANOVA that is sent to output folder for all 6 weeks
     03 = Makes two scatterplots of video views and length and sends to output
     04 = Assembles the report.rmd into an HTML
  
  3) Output -> Intermediate output from the R scripts that will later be used for the report             (scatterplot/anova results/table1)
    
# Creating the Report
To create the report HTML, open up a git terminal and type in `make`, or `make report.html`.

# Adding customizable options to the report
The report HTML can be customized in two distinct ways:
  1) You can change the number of weeks (out of 6) that are used by the ANOVA by 
     typing in the terminal `make anovaweeks=(> # of weeks you wish to use)`. Default
     is all 6 weeks (> 0 weeks) for the ANOVA.
  
  2) The color scale of the scatterplots using the Viridis color pallete for the number of weeks. 
     This can be done by typing in the terminal `make colorscale={"color scale you wish to use"}`.
     The available options are listed here:
     1) Viridis
     2) Magma (the default)
     3) Plasma
     4) Inferno
     5) Cividis
     6) Mako
     7) rocket
     8) turbo
*IMPORTANT: do not have any spaced when you type in the customization option*
ex) `make anovaweeks=3` and not `make anovaweeks = 5`