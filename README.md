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
     02 = Conducting ANOVA that is sent to output folder
     03 = Makes two scatterplots of video views and length and sends to output
     04 = Assembles the report.rmd into an HTML
  
  3) Output -> Intermediate output from the R scripts that will later be used for the report             (scatterplot/anova results/table1)
    
# Creating the Report
To create the report HTML, open up a git terminal and type in `make`, or `make report.html`. Additionally, there will be parameter options added soon that will enable you to enter a Wes-Anderson movie to change the color of the scatterplot and a parameter option to pick which week(s) to conduct an ANOVA on video length and views.
    