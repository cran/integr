
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Interaction Graphs package ‘integr’

The Interaction Graphs package ‘integr’ is an implementation of
Interaction Analysis of Aleks Jakulin
(<http://stat.columbia.edu/~jakulin/Int/>). It provides a GraphViz graph
of 3-way interactions (i.e. conditional Information Gain) based on a
provided discrete data.frame (i.e. all columns are factors). This graph
serves to analyze the correlations between the attributes, as well to
select the most informative attributes in the context of predictive
machine learning modeling. The obtained interaction graph can be
exported to various output formats: Graphviz file, SVG, PNG, PDF, or PS
images.

In the following text, installation guides (from CRAN and GitHub) and a
simple example for using the package are provided. For more detailed
information on Interaction Graphs methodology, please consult the
Tutorial vignette of this package using the command, after the package
is installed:

``` r
vignette("IntGraphTutorial", package = "integr")
```

or visit the webpage of Aleks Jakulin
(<http://stat.columbia.edu/~jakulin/Int/>).

## Installation

One can install the released version of integr from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("integr")
```

Or from GitHub with:

``` r
library("devtools") #devtools package needs to be installed first!
install_github("peleplay/integr", build_opts = c("--no-resave-data", "--no-manual"), build_vignettes = TRUE)
```

## Example

A basic example which shows how to generate an Interaction Graph and
export it to various formats is provided below. The same example is used
in the Tutorial vignette.

``` r

#load integr package (needs to be installed first!)
library("integr")

#read Golf toy-dataset
data("golf")

#create an Interaction graph object
g <- interactionGraph(golf, classAtt = "Play", intNo = 10, speedUp = FALSE)

#plot the Interaction graph object (in RStudio!)
plotIntGraph(g)

#export the Interaction graph object to a Graphviz file
igToGrViz(g, path = "myFolder", fName = "myInteractionGraph")

#export the Interaction graph object to a SVG image
igToSVG(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

#export the Interaction graph object to a PNG image
igToPNG(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

#export the Interaction graph object to a PDF image
igToPDF(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

#export an Interaction graph object to a PS image
igToPS(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)
```

*path* parameter is a string indicating the path (folder) in which the
output should be saved.

*fName* parameter is a string indicating the name of the output. It
should be defined without extension and without spaces. If not specified
differently, ‘InteractionGraph’ by default;

*h* is the desired height of the output image in pixels. If not defined
differently, 2000 by default.
