source('readdata.R')

#確認資料會不會跟著選擇的颱風進行篩選
output$data_Thun <- renderTable({
  
  dt2_Thun = dt_Thun[dt_Thun$days==input$day_Thun, ]
  dt2_Thun = dt2_Thun[dt2_Thun$disaster.event==input$thunder, ]
  dt2_Thun
  
})