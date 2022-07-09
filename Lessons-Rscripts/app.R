# Author: Anjali Silva
# Date: 9 July 2022
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 100,
                        value = 50)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)


# Simplest shiny app
ui <- fluidPage(
  "Hello world"
)
server <- function(input, output) {
}

# Run the application 
shinyApp(ui = ui, server = server)


# Exercise - slide 11 lesson 08
library(shiny)
library(ggplot2)
datasets <- c("economics", "seals")
ui <- fluidPage(
  selectInput("dataset", "Dataset", choices = datasets),
  verbatimTextOutput("summary"),
  imageOutput("plot") # change from tableOutput to imageOutput
)
server <- function(input, output, session) {
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  output$summary <- renderPrint({
    summary(dataset())
  })
  output$plot <- renderPlot({
    plot(dataset()) # add brackets around dataset, its a function
  }, res = 96)
}
shinyApp(ui, server)

# try exercise until 11.05; break from 11.05 to 11.15
# be back by 11.15 am and let's take up this exercise
# [END]
