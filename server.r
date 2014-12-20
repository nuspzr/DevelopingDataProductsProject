zone<-function(age,rhr){
  mhr<-220-age #maximum heart rate
  hrr<-mhr-rhr #heart rate reserve
  z1<-c(0.6,0.7)*hrr+rhr
  z2<-c(0.7,0.8)*hrr+rhr
  z3<-c(0.8,0.9)*hrr+rhr
  z4<-c(0.9,1)*hrr+rhr
  
  cbind(z1,z2,z3,z4)
}

shinyServer(
  function(input,output){
    output$z1<-renderPrint({zone(input$age,input$rhr)[,1]})
    output$z2<-renderPrint({zone(input$age,input$rhr)[,2]})
    output$z3<-renderPrint({zone(input$age,input$rhr)[,3]})
    output$z4<-renderPrint({zone(input$age,input$rhr)[,4]})
  }
  )