//
//  LocationManager.swift
//  WeatherDemo
//
//  Created by Codebucket on 19/09/22.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate{
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation(){
        isLoading = true
        manager.requestLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        location = locations.first?.coordinate
        location = CLLocationCoordinate2D(latitude: CLLocationDegrees(25.5941), longitude: CLLocationDegrees(85.1376))
        isLoading = false
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
     print("Error getting location", error)
        isLoading = false
    }
}
