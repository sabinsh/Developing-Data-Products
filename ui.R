#install.packages("shiny")
library(shiny)

shinyUI(  
  mainPanel(
    headerPanel("Guess the Number!"),
    h3('Pick a number between 1 and 100.'),
    
    #numericInput('guess', 'Number', 1, min = 1, max = 100, step = 1),
    #submitButton('Submit')
    textInput('guess', 'Number', value = ""),
    h5('Please press \'Guess!\' only on your first attempt'),
    actionButton("goButton", "Guess!"),
    
    
    h5('The objective of this game is to guess an integer between
       1 and 100 and try to match it with the computer\'s
       selection'),

    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Results of guess'),
    verbatimTextOutput("outputValue"),
    
    h5('Similar apps in website: http://www.funbrain.com/guess/')
    )
    )