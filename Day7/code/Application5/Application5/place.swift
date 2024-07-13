//
//  place.swift
//  Application5
//
//  Created by Amit Kulkarni on 13/07/24.
//

import Foundation
import MapKit

// CL: CoreLocation
// MK: MapKit
// CA: CoreAnimation
// CM: CoreMotion
// CT: CoreTelephony
// CG: CoreGraphics

@objc class Place: NSObject, MKAnnotation {
    var name: String!
    var details: String!
    var latitude: Double!
    var longitude: Double!
    
    init(name: String!, details: String!, latitude: Double!, longitude: Double!) {
        self.name = name
        self.details = details
        self.latitude = latitude
        self.longitude = longitude
    }
    
    var title: String? {
        return self.name
    }
    
    var subtitle: String? {
        return self.details
    }
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
