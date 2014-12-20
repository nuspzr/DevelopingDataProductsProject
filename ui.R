library(shiny)
shinyUI(pageWithSidebar(
headerPanel("Karvonen Heart Rate Calculator"),  
sidebarPanel(
  sliderInput('age','Your age',value=35,min=18,max=85,step=1),
  sliderInput('rhr', 'Your resting heart rate',value=70,min=40,max=110,step=1)
  ),

mainPanel(
  h3("Training Zones"),
  h4('Recovery Zone'),
  verbatimTextOutput("z1"),
  p("Long, slow, recovery runs. Training in this zone improves the ability of your heart to pump blood and improve the muscles' ability to utilize oxygen.  The body becomes more efficient at feeding the working muscles, and learns to metabolise fat as a source of fuel."),
  p(' '),
  
  
  h4('Aerobic Zone'),
  verbatimTextOutput("z2"),
  p('Most effective for overall cardiovascular fitness. Increases your cardio-respitory capacity: that is, the your ability to transport oxygenated blood to the muscle cells and carbon dioxide away from the cells.  Also effective for increasing overall muscle strength.'),
  p(' '),
  
  h4('Anaerobic Zone'),
  verbatimTextOutput("z3"),
  p('The point at which the body cannot remove lactic acid as quickly as it is produced is called the lactate threshold or anaerobic threshold. It generally occurs at about 80-88% of the Heart Rate Reserve. Training in this zone helps to increase the lactate threshold, which improves performance. Training in this zone is hard: your muscles are tired, your breathing is heavy.'),
  p(' '),
  
  h4('Red Line Zone'),
  verbatimTextOutput("z4"),
  p('You should only train in this zone if you re very fit, and only for very short periods of time. Lactic acid develops quickly as you are operating in oxygen debt to the muscles   The value of training in this zone is you can increase your fast twitch muscle fibers which increase speed.'),
  p(' ')
  
  )
))
