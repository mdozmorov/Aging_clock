#
# Calculates age from methylation data
#

library(shiny)
library(readr)
library(sqldf)
library(GEOquery)

# Define UI
ui <- fluidPage(titlePanel("Epigenetic clock"),

                sidebarLayout(sidebarPanel(
                  helpText("Upload a .csv file. The first column has the CpG cites, the following column(s) has methylation values"),
                  fileInput(
                    inputId = "methylationFile",
                    label = "Upload methylation .csv file (max 2GB)",
                    accept = c('text/csv',
                               'text/comma-separated-values,text/plain',
                               '.csv'),
                    multiple = FALSE
                  ),
                  hr(),
                  helpText("Enter a GEO sample id (for example GSM401945) and press the button"),
                  textInput(inputId = "gsmID", label = "Enter GSM sample ID", placeholder = "GSMXXXX"),
                  actionButton(inputId = "calculate", label = "Predict age"),
                  hr(),
                  p("Based on",
                    a(href="https://doi.org/10.1186/gb-2013-14-10-r115", "\"DNA methylation age of human tissues and cell types\""),
                    "by",
                    a(href="https://www.biostat.ucla.edu/people/horvath", "Steve Horvath."),
                    "Code available at ",
                    a(href="https://github.com/agelabs/epigeneticclock", "Github."),
                    "Send comments or questions to",
                    a(href="https://twitter.com/snowpong", "@snowpong")
                  )
                ),

                mainPanel(tableOutput("table"), tableOutput("description"), textOutput("logfile"))))

# Define server
server <- function(input, output) {
  options(shiny.maxRequestSize = 2000 * 1024 ^ 2)
  source("horvath2013.R")

  methylation <- reactiveValues(Table  = NULL, Message = NULL, Detail = NULL, Description = NULL, Name = NULL)

  observeEvent(input$calculate, {
    withProgress(
      message = paste("Loading ", input$gsmID),
      detail = "Unknown size",
      value = 0.3,
      {
        gsmTable <-  tryCatch({
          getGEO(input$gsmID)
        }, error = function(e) {
          NULL
        })
        methylation$Name <- input$gsmID
        methylation$Message <- sprintf("Processing %s", input$gsmID)
        methylation$Detail <- "Unknown size"
        if (!is.null(gsmTable)) {
          methylation$Description <- head(Meta(gsmTable))
          methylation$Table <- Table(gsmTable)[,1:2]
        } else {
          methylation$Description <- NULL
          methylation$Table <- NULL
        }
        setProgress(1)
      }
    )
  })

  observeEvent(input$methylationFile, {
    inputFileName <- input$methylationFile[[1, 'name']]
    inputFileSize <- input$methylationFile[[1, 'size']]
    inputFilePath <- input$methylationFile[[1, 'datapath']]

    methylation$Name <- inputFileName
    methylation$Message <- sprintf("Processing %s", inputFileName)
    methylation$Detail <- sprintf("%d bytes", inputFileSize)
    methylation$Description <- "Empty..."
    methylation$Table <- tryCatch({
      read.csv.sql(inputFilePath)
    }, error = function(e) {
      NULL
    })
  })

  observeEvent(methylation$Table, ignoreNULL = FALSE, {
    withProgress(
      message = methylation$Message,
      detail = methylation$Detail,
      value = 0,
      {
        setProgress(1/20)
        ageResults = tryCatch({
          calculateAge(methylation$Table)
        }, error = function(e) {
          paste("Error: ", e$message)
        })
        setProgress(1)
      }
    )

    output$table <- renderTable({ageResults},
                                striped = TRUE,
                                rownames = TRUE,
                                caption = paste("Estimaged DNAm age of ", methylation$Name),
                                caption.placement = getOption("xtable.caption.placement", "top"))
    output$logfile <- renderText(read_file("LogFile.txt"))
    output$description <- renderTable({methylation$Description},
                                      striped = TRUE,
                                      rownames = TRUE,
                                      caption = paste("GSM metadata for ", methylation$Name),
                                      caption.placement = getOption("xtable.caption.placement", "top"))
  })
}

# Run the application
shinyApp(ui = ui, server = server)
