% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/bootstrap.R
\name{pageWithSidebar}
\alias{pageWithSidebar}
\title{Create a page with a sidebar}
\usage{
pageWithSidebar(headerPanel, sidebarPanel, mainPanel)
}
\arguments{
\item{headerPanel}{The \link{headerPanel} with the application title}

\item{sidebarPanel}{The \link{sidebarPanel} containing input controls}

\item{mainPanel}{The \link{mainPanel} containing outputs}
}
\value{
A UI defintion that can be passed to the \link{shinyUI} function
}
\description{
Create a Shiny UI that contains a header with the application title, a
sidebar for input controls, and a main area for output.
}
\note{
This function is deprecated. You should use \code{\link{fluidPage}}
along with \code{\link{sidebarLayout}} to implement a page with a sidebar.
}
\examples{
# Define UI
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Hello Shiny!"),

  # Sidebar with a slider input
  sidebarPanel(
    sliderInput("obs",
                "Number of observations:",
                min = 0,
                max = 1000,
                value = 500)
  ),

  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
}

