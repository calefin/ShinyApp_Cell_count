


shinyServer(
        function(input, output) {
                output$valor <- renderText((input$num/input$num1)*input$num2*10000)
                
                output$count <- renderText((input$num3*1000)/((input$num/input$num1)*input$num2*10000))
        
        }
    )