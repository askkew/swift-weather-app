//
//  WeatherView.swift
//  swift-weather-app
//
//  Created by Lucas Overbey on 7/5/23.
//

import SwiftUI

//struct WeatherView: View {
//    var weather: ResponseBody
//
//    var body: some View {
//        ZStack(alignment: .leading) {
//            VStack {
//                VStack(alignment: .leading, spacing: 5) {
//                    Text(weather.name)
//                        .bold().font(.title)
//                    Text("\(Date().formatted(.dateTime.month().day().year().hour().minute()))")
//                        .fontWeight(.light)
//                    Text(weather.main.feelsLike.roundDouble() + "°")
//                        .font(.system(size: 90))
//                        .fontWeight(.bold)
//                        .padding()
//                    VStack(spacing: 20) {
//                        Text(weather.weather[0].main)
//                    }
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//
//                VStack {
//
//
//                    Spacer()
//
//
//                    .frame(width: 150, alignment: .leading)
//                }
//            }
//            .padding()
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
//        .edgesIgnoringSafeArea(.bottom)
//        .background(Color(hue: 0.705, saturation: 0.119, brightness: 0.369))
//        .preferredColorScheme(.dark)
//    }
//}

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        ZStack {
            Color(red: 98/255, green: 155/255, blue: 231/255)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                VStack(alignment: .center, spacing: 5) {
                    Text(weather.name)
                        .bold()
                        .font(.title)
                    Text("\(Date().formatted(.dateTime.month().day().year().hour().minute()))")
                        .fontWeight(.light)
                    Text(weather.main.feelsLike.roundDouble() + "°")
                        .font(.system(size: 90))
                        .fontWeight(.bold)
                    
                    VStack(spacing: 1) {
                        if let iconURL = URL(string: "https://openweathermap.org/img/wn/\(weather.weather[0].icon)@2x.png") {
                            AsyncImage(url: iconURL) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 150)
                            } placeholder: {
                                Color.gray
                            }
                        }
                        Text(weather.weather[0].main)
                            .font(.system(size: 25))
                    }
                }
                
                Spacer()
            }
            .padding()
        }
        .preferredColorScheme(.dark)
    }
}



struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
