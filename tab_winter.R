source('readdata.R')

#確認資料會不會跟著選擇的颱風進行篩選
output$data_W <- renderTable({
  
  dt2_W = dt_W[dt_W$days==input$day_W, ]
  dt2_W = dt2_W[dt2_W$disaster.event==input$winter, ]
  dt2_W
  
})