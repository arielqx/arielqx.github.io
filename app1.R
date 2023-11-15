library(DT)

ui <- fluidPage(
  h2("The 21-22 Premier League Season"),
  DT::dataTableOutput("soccer")
)

server <- function(input, output) {
  output$soccer = DT::renderDataTable({
    soccer
  })
}

shinyApp(ui, server)
