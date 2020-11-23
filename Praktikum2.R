library(shiny)
ui <- navbarPage(
  strong("Strom, Spannung, Widerstand"),
  
  tabPanel(
    strong("Versuch 1"),
    titlePanel(h4("Gültigkeit des Ohm’schen Gesetzt")),
    
    
    tabsetPanel(
      tabPanel(
        strong("Versuch 1A"),
        
        titlePanel(h4("Netzgerät als Spannungsquelle")),
        br(),
        sidebarPanel(
          "",
          
          sliderInput(
            inputId = "slider",
            label = "Verändern Sie die Spannung (0 V- 20 V in 2 V Steps):",
            min = 0,
            max = 20,
            value = 0,
            step = 2
          )
        ),
        
        mainPanel(conditionalPanel("input.slider=='0'",
                                   ((
                                     img(
                                       src = "Versuch10V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.slider=='2'",
                                   ((
                                     img(
                                       src = "Versuch12V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.slider=='4'",
                                   ((
                                     img(
                                       src = "Versuch14V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.slider=='6'",
                                   ((
                                     img(
                                       src = "Versuch16V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='8'",
                                   ((
                                     img(
                                       src = "Versuch18V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='10'",
                                   ((
                                     img(
                                       src = "Versuch110V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='12'",
                                   ((
                                     img(
                                       src = "Versuch112V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='14'",
                                   ((
                                     img(
                                       src = "Versuch114V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='16'",
                                   ((
                                     img(
                                       src = "Versuch116V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='18'",
                                   ((
                                     img(
                                       src = "Versuch118V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   )))),
        mainPanel(conditionalPanel("input.slider=='20'",
                                   ((
                                     img(
                                       src = "Versuch120V.jpg",
                                       height = 529,
                                       width = 620
                                     )
                                   ))))
      ),
      
      
      tabPanel(
        strong("Versuch 1B"),
        titlePanel(h4("Netzgerät als Stromquelle")),
        br(),
        sidebarPanel(
          "",
          sliderInput(
            inputId = "radio",
            label = "Verändern Sie die Stromstärke (0 mA - 200 mA in 20 mA Steps):",
            min = 0,
            max = 200,
            value = 0,
            step = 20
          )
        ),
        
        mainPanel(conditionalPanel("input.radio=='0'",
                                   ((
                                     img(
                                       src = "1bVersuch0mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='20'",
                                   ((
                                     img(
                                       src = "1bVersuch20mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='40'",
                                   ((
                                     img(
                                       src = "1bVersuch40mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='60'",
                                   ((
                                     img(
                                       src = "1bVersuch60mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='80'",
                                   ((
                                     img(
                                       src = "1bVersuch80mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='100'",
                                   ((
                                     img(
                                       src = "1bVersuch100mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='120'",
                                   ((
                                     img(
                                       src = "1bVersuch120mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='140'",
                                   ((
                                     img(
                                       src = "1bVersuch140mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='160'",
                                   ((
                                     img(
                                       src = "1bVersuch160mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='180'",
                                   ((
                                     img(
                                       src = "1bVersuch180mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        mainPanel(conditionalPanel("input.radio=='200'",
                                   ((
                                     img(
                                       src = "1bVersuch200mA.jpg",
                                       height = 491,
                                       width = 636
                                     )
                                   )))),
        
        
      )
    )
  ),
  
  tabPanel(
    strong("Versuch 2"),
    titlePanel(h4("Kirchhoff’sche Regeln")),
    sidebarPanel(
      radioButtons(
        "zozo",
        "Kirchhoff’sche Regel:",
        choices = c(
          "Kirchhoff’sche Knotenregel Strommessung",
          "Kirchhoff’sche Knotenregel Spannungsmessung",
          "Kirchhoff’sche Maschenregel"
        ),
        
        selected = "Kirchhoff’sche Knotenregel Strommessung"
      )
    ),
    
    mainPanel(
      conditionalPanel("input.zozo=='Kirchhoff’sche Knotenregel Strommessung'",
                       ((
                         img(
                           src = "Versuch2KnotenregelStrom.jpg",
                           height = 515,
                           width = 850
                         )
                       )))
    ),
    
    mainPanel(
      conditionalPanel(
        "input.zozo=='Kirchhoff’sche Knotenregel Spannungsmessung'",
        ((
          img(
            src = "Versuch2KnotenregelSpannung.jpg",
            height = 505,
            width = 808
          )
        ))
      )
    ),
    
    mainPanel(
      conditionalPanel("input.zozo=='Kirchhoff’sche Maschenregel'",
                       ((
                         img(
                           src = "Versuch2Maschenregel.jpg",
                           height = 592,
                           width = 788
                         )
                       )))
    )
  ),
  
  
  tabPanel(
    strong("Versuch 3"),
    titlePanel(h4("Widerstand einer Versuchsperson")),
    sidebarPanel(
      radioButtons(
        "wolo",
        "Versuche:",
        choices = c(
          "Versuch 1, fest, nass",
          "Versuch 2, fest, trocken",
          "Versuch 3, locker"
        ),
        selected = "Versuch 1, fest, nass"
      )
    ),
    
    mainPanel(conditionalPanel("input.wolo=='Versuch 1, fest, nass'",
                               ((
                                 img(
                                   src = "Versuch3festnass.jpg",
                                   height = 449,
                                   width = 812
                                 )
                               )))),
    
    mainPanel(conditionalPanel(
      "input.wolo=='Versuch 2, fest, trocken'",
      ((
        img(
          src = "Versuch3fest.jpg",
          height = 449,
          width = 812
        )
      ))
    )),
    
    mainPanel(conditionalPanel("input.wolo=='Versuch 3, locker'",
                               ((
                                 img(
                                   src = "Versuch3locker.jpg",
                                   height = 450,
                                   width = 812
                                 )
                               ))))
    
  ),
  
  
  tabPanel(
    strong("Versuch 4"),
    titlePanel(h4("Temperaturabhängiger Widerstand")),
    br(),
    mainPanel(
      tags$video(
        src = "Versuch4NTC.mp4",
        width = "750px",
        height = "520px",
        type = "video/mp4",
        controls = "controls"
      )
    )
  )
  
)



server <- function(input, output, session) {
  
}

shinyApp(ui = ui, server = server)