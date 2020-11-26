library(shiny)
ui <- navbarPage(
  strong("Strom, Spannung, Widerstand"),
  
  tabPanel(
    strong("Versuch 1"),
    titlePanel(h4("Gueltigkeit des Ohmschen Gesetz")),
    
    
    tabsetPanel(
      tabPanel(
        strong("Versuch 1A"),
        
        titlePanel(h4("Netzgeraet als Spannungsquelle")),
        br(),
        sidebarPanel(
          "",
          
          sliderInput(
            inputId = "slider",
            label = "Veraendern Sie die Spannung:",
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
        titlePanel(h4("Netzgeraet als Stromquelle")),
        br(),
        sidebarPanel(
          "",
          sliderInput(
            inputId = "radio",
            label = "Veraendern Sie die Stromstaerke:",
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
    titlePanel(h4("Kirchhoffsche Regeln")),
    sidebarPanel(
      radioButtons(
        "zozo",
        "Kirchhoffsche Regel:",
        choices = c(
          "Kirchhoffsche Maschenregel",
          "Kirchhoffsche Knotenregel Strommessung",
          "Kirchhoffsche Knotenregel Spannungsmessung"
          
        ),
        
        selected = "Kirchhoffsche Maschenregel"
      )
    ),
    mainPanel(
      conditionalPanel("input.zozo=='Kirchhoffsche Maschenregel'",
                       ((
                         img(
                           src = "Versuch2Maschenregel.jpg",
                           height = 592,
                           width = 788
                         )
                       )))
    ),
    
    mainPanel(
      conditionalPanel("input.zozo=='Kirchhoffsche Knotenregel Strommessung'",
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
        "input.zozo=='Kirchhoffsche Knotenregel Spannungsmessung'",
        ((
          img(
            src = "Versuch2KnotenregelSpannung.jpg",
            height = 505,
            width = 808
          )
        ))
      )
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
          "Metallgriffe mit lockeren Haenden gehalten",
          "Metallgriffe fest mit trockenen Haenden gehalten",
          "Metallgriffe fest mit nassen Haenden gehalten"
        ),
        selected = "Metallgriffe mit lockeren Haenden gehalten"
      )
    ),
    
    mainPanel(conditionalPanel("input.wolo=='Metallgriffe mit lockeren Haenden gehalten'",
                               ((
                                 img(
                                   src = "Versuch3locker.jpg",
                                   height = 449,
                                   width = 812
                                 )
                               )))),
    
    mainPanel(conditionalPanel(
      "input.wolo=='Metallgriffe fest mit trockenen Haenden gehalten'",
      ((
        img(
          src = "Versuch3fest.jpg",
          height = 449,
          width = 812
        )
      ))
    )),
    
    mainPanel(conditionalPanel("input.wolo=='Metallgriffe fest mit nassen Haenden gehalten'",
                               ((
                                 img(
                                   src = "Versuch3festnass.jpg",
                                   height = 450,
                                   width = 812
                                 )
                               ))))
    
  ),
  
  
  tabPanel(
    strong("Versuch 4"),
    titlePanel(h4("Temperaturabhaengiger Widerstand")),
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
