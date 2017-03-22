# Load packages for Shiny UI 
library(shiny)
library(shinythemes)

#### Shiny UI code

shinyUI <- fluidPage(theme=shinytheme("darkly"),
    fluidPage(
        # Title for Shiny App
        headerPanel("Next Word Prediction - Coursera Capstone Project"),
        
            sidebarPanel(
                hr(),
                textInput("inputText", "Enter your text here:",value = "")
            ),
        
                hr(),
        
            mainPanel(
                hr(),
                hr(),
                h5("Suggested/ Predicted word:"),
                verbatimTextOutput("prediction"))
                
            ),
                ### Panel for html/css/jquery collapsible accordion which outlines extra information for Shiny App, NLP and project.
                conditionalPanel("Extra information", htmlOutput("extra_info)"),
                         tags$div(id="extra_info",
                                  HTML("<iframe id='ifrHelp' src='extra_info.html' height='400' width='715' align='right'></iframe>")
                        
            )
        )
    )

### Notes