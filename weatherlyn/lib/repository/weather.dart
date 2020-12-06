import 'package:flutter/cupertino.dart';
import 'package:weatherlyn/model/more_info.dart';
import 'package:weatherlyn/model/weekly_info.dart';

class WeatherRepository{
  
  List<MoreInfoModel> moreInfo(){
    var data = List<MoreInfoModel>();
    data.add(MoreInfoModel(icon: 'tempmax.png' ,name: 'Temp max',value: '34℃'));
    data.add(MoreInfoModel(icon: 'tempmin.png' ,name: 'Temp min',value: '18℃'));
    data.add(MoreInfoModel(icon: 'wind.png' ,name: 'Wind',value: '9 km/h'));
    data.add(MoreInfoModel(icon: 'humidity.png' ,name: 'Humidity',value: '32%'));
    data.add(MoreInfoModel(icon: 'realfeel.png' ,name: 'Real Feel',value: '29℃'));
    data.add(MoreInfoModel(icon: 'pressure.png' ,name: 'Pressure',value: '821 hPa'));
    return data;
  }

  List<WeeklyInfoModel> weeklyInfo(){
    var data = List<WeeklyInfoModel>();
    data.add(WeeklyInfoModel(nameDate: "WED", date: "24 July", temp: "28℃", realFeel: "29℃", weatherIcon: "weather_partly_cloudy.png", weatherName: "Cloudy"));
    data.add(WeeklyInfoModel(nameDate: "THU", date: "25 July", temp: "27℃", realFeel: "29℃", weatherIcon: "weather_partly_cloudy.png", weatherName: "Cloudy"));
    data.add(WeeklyInfoModel(nameDate: "FRI", date: "26 July", temp: "29℃", realFeel: "29℃", weatherIcon: "weather_thunder.png", weatherName: "Thunder"));
    data.add(WeeklyInfoModel(nameDate: "WED", date: "27 July", temp: "28℃", realFeel: "28℃", weatherIcon: "weather_thunder.png", weatherName: "Thunder"));
    data.add(WeeklyInfoModel(nameDate: "SAT", date: "28 July", temp: "28℃", realFeel: "27℃", weatherIcon: "weather_rainy.png", weatherName: "Rainy"));
    data.add(WeeklyInfoModel(nameDate: "SUN", date: "29 July", temp: "30℃", realFeel: "29℃", weatherIcon: "weather_rainy.png", weatherName: "Rainy"));
    data.add(WeeklyInfoModel(nameDate: "MON", date: "1 Juny", temp: "31℃", realFeel: "30℃", weatherIcon: "weather_partly_cloudy.png", weatherName: "Cloudy"));
    data.add(WeeklyInfoModel(nameDate: "TUE", date: "2 Juny", temp: "30℃", realFeel: "30℃", weatherIcon: "weather_rainy.png", weatherName: "Rainy"));
    return data;
  }
  
}