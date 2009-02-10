module ThingsHelper
  
  def chelper
    @chelper = [ @chart.thing1, '|', @chart.thing2, '|', @chart.thing3, '|', @chart.thing4, '|', @chart.thing5 ]
  end
  
  def chamount
    @chamount = [ @chart.thing1amount, ',', @chart.thing2amount, ',', @chart.thing3amount, ',',
       @chart.thing4amount, ',', @chart.thing5amount ]
  end
end
