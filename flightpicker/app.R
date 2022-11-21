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
    
    tags$head(includeHTML(("g_taghead.html"))),  
    
    includeCSS("mainstyle.css"), #CSS StyleSheet
    
    tags$body(includeHTML(("g_tagbody.html"))),   
      
    fluidRow(class="mainPanel",
    
    
      fluidRow(class="sideleft"),
      fluidRow(class="sideright"),
      fluidRow(class="hd",
               tags$img(src="topflight.png")
               ),  
      fluidRow(class="bt",
               tags$img(src="bottomflight.png")
               ),
      fluidRow(class="destfrom",
               div(class="fromtext", 'FROM'),
               #textInput("destinationfrom",label=NULL, value="Enter Text...")
               selectInput("fromselect", label=NULL,
                           choices = list("","Ankara","Istanbul","Izmir"))
          
              ),
      fluidRow(class="destto",
               div(class="totext", 'TO'),
               #textInput("destinationto",label=NULL, value="Enter Text...")
               selectInput("toselect", label=NULL,
                           choices = list("","London","Paris","Tokyo"))
              ),
      fluidRow(class="date",
               div(class="datetext", 'FLIGHT DATE'),
               dateInput("flightdate", label=NULL, value=" ")
               ),
      fluidRow(class="pass",
               div(class="passtext", 'PASSENGER/S'),
               #textInput("passanger",label=NULL, value="Enter Text...")
               numericInput("passcount", label=NULL, value=1)
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
