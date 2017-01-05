source('readdata.R')

#確認資料會不會跟著選擇的颱風進行篩選
output$data_F <- renderTable({
  
  dt2_F = dt_F[dt_F$days==input$day_F, ]
  dt2_F = dt2_F[dt2_F$disaster.event==input$fire, ]
  dt2_F
  
})