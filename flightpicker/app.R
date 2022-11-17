#
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

    tags$head(includeHTML(("g_analytics.html"))),  
    
    includeCSS("mainstyle.css"), #CSS StyleSheet
      
    fluidRow(class="mainPanel",
      fluidRow(class="sideleft"),
      fluidRow(class="sideright"),
      fluidRow(class="hd"),  
      fluidRow(class="bt"),
      fluidRow(class="destfrom",
               textInput("destinationfrom",label=NULL, value="Enter Text...")
              ),
      fluidRow(class="destto",
               textInput("destinationto",label=NULL, value="Enter Text...")
              ),
      fluidRow(class="date",
               dateInput("flightdate", label=NULL, value="2023-01-01")
               ),
      fluidRow(class="pass",
               textInput("passanger",label=NULL, value="Enter Text...")
               ),
      fluidRow(class="check",
               actionButton("action", label="Check Flights"))
    ) #fluidRow
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$value <- renderPrint({input$destinationfrom})
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
