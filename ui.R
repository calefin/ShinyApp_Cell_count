shinyUI(fluidPage(
        titlePanel("Cell Concentration Calculation"),
        
        sidebarLayout(
                sidebarPanel(
                        strong(h4(helpText("Inputs from Neubauer count"))),
                
                        
                        numericInput("num",
                                label = h4("Counted cells"),
                                value = 1),
                        
                        numericInput("num1",
                                label = h4("Number of quadrants"),
                                value = 1),
                        
                        numericInput("num2",
                                label = h4("Dilution factor"),
                                value = 1),
                        
                        strong(h4(helpText("Input of the desired cell count"))),
                        
                        numericInput("num3",
                                label = h4("Cell count desired"),
                                value = 100000)),
                        
                mainPanel(
                        tabsetPanel(
                                tabPanel("Instructions",
                                                helpText("The laboratory routine can often be exhaustive.",
                                                         "To minimize some time of calculation in cell count",
                                                         "to perform reactions for flow citometry or cell culture,",
                                                         "this app calculate the cell number and final volume",
                                                         "of a cell suspension to acquire a desired cell count.",
                                                         "the input is acquire from a Neubaur chamber count,",
                                                         "a standard cell count method in laboratory routine",
                                                         "                                                  ",
                                                         "`Cell count` - corresponds to the counted cells in",
                                                         "the Neubauer chamber;",
                                                         "`Number of Quadrants` - corresponds to the total of",
                                                         "quadrants counted in the Neubauer Chamber;",
                                                         "`Dilution factor` - is the factor of dilution used to",
                                                         "count in the Neubauer chamber (e.g. 1:20 = 20x);",
                                                         "'Desired cell count' -  is the amount of cells that you",
                                                         "want to pipette to do your reaction.",
                                                         "The output `Cells per mL` corresponds to the total number of cells",
                                                         "per mL in your main cell suspention solution.",
                                                         "The output `Volume to pipette in uL` corresponds to the volume in uL",
                                                          "that you need to pipette to obtain the final cell count that you want for a reaction."
                                                         )),
                                tabPanel("Data output",
                                        h3(p("Cells per mL"),
                                                textOutput("valor")),
                                        h3(p("Volume to pipette in uL"),
                                                textOutput("count"))
                        ))
                        )
                        )
        )
)