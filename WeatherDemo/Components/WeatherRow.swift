//
//  WeatherRow.swift
//  WeatherDemo
//
//  Created by Codebucket on 19/09/22.
//

import SwiftUI

struct WeatherRow: View {
    let imageName: String
    let title: String
    let temp: String
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
            
            VStack(alignment: .leading){
                Text(title)
                    .font(.caption)
                Text(temp)
                    .bold().font(.title)
            }
            .padding(.leading, 20)
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(imageName: "thermometer", title: "Min Temp", temp: "7*")
    }
}
