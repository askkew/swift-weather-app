//
//  IntroView.swift
//  swift-weather-app
//
//  Created by Lucas Overbey on 7/5/23.
//

import SwiftUI
import CoreLocationUI

struct IntroView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 1) {
//                Text("")
//                    .bold().font(.title)
//                Text("Share locaiton")
//                    .padding()
//                TextField("City name: ", text: $cityname)
//                    .textFieldStyle(.roundedBorder)
//                    .frame(width: UIScreen.main.bounds.width * 0.6)
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
