Greetings fellow Info 550 students! The following provides a description of the contents of repository along with instructions on how to assemble the report.

# Content of the Report

The contents of the report will assemble a final report for the engagement dataset. The final report will knit into an HTML document that
will print out a summary of each of the components of our analysis. It will also contain a brief description of the dataset and the intended analysis.

# Contents of the Repository

The project directory contains the directory with the following:
  
  makefile -> for compiling the report and toggling the parameters
  
  report.Rmd -> report R markdown that will assemble into an HTML when made
  
  README.md -> instructions for how to create the report
  
  .gitignorefile ->
  
  Along with 3 subfolders:

  1) Data -> Contains the engagement report data
    
  
  2) Code -> Contains the R scripts used to create the report
  
  3) Output -> Intermediate output from the R scripts that will later be used for the report
    
# Creating the Report
To create the report HTML, open up a git terminal and type in `make`, or `make report.html`. 
    