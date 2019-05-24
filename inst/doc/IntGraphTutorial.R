## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- fig.show='hold', echo=FALSE, warning=FALSE, message=FALSE, error=FALSE, fig.cap="Figure 1: Interaction graph based on the toy-dataset 'Golf'", fig.height=4, fig.align='center'----
library(integr)
integr::plotIntGraph(integr::interactionGraph(integr::golf, classAtt = "Play", intNo = 10))

## ---- echo=FALSE, results='asis', fig.cap="Table 1: The 'Golf' toy-dataset"----
knitr::kable(integr::golf)

## ---- eval=FALSE---------------------------------------------------------
#  #load integr package (needs to be installed first!)
#  library("integr")
#  
#  #read Golf toy-dataset
#  data("golf")

## ---- eval=FALSE---------------------------------------------------------
#  #create an Interaction graph object
#  g <- interactionGraph(golf, classAtt = "Play", intNo = 10, speedUp = FALSE)

## ---- eval=FALSE---------------------------------------------------------
#  #plot an Interaction graph object (in RStudio!)
#  plotIntGraph(g)

## ---- eval=FALSE---------------------------------------------------------
#  #export an Interaction graph object to a Graphviz file
#  igToGrViz(g, path = "myFolder", fName = "myInteractionGraph")

## ---- eval=FALSE---------------------------------------------------------
#  #export an Interaction graph object to a SVG image
#  igToSVG(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

## ---- eval=FALSE---------------------------------------------------------
#  #export an Interaction graph object to a PNG image
#  igToPNG(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

## ---- eval=FALSE---------------------------------------------------------
#  #export an Interaction graph object to a PDF image
#  igToPDF(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

## ---- eval=FALSE---------------------------------------------------------
#  #export an Interaction graph object to a PS image
#  igToPS(g, path = "myFolder", fName = "myInteractionGraph", h = 2000)

