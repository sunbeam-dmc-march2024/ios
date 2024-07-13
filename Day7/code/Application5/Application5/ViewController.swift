//
//  ViewController.swift
//  Application5
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onMapTypeChange(_ sender: Any) {
        let control = sender as! UISegmentedControl
        
        if control.selectedSegmentIndex == 0 {
            self.mapView.mapType = .standard
        } else if control.selectedSegmentIndex == 1 {
            self.mapView.mapType = .satellite
        } else if control.selectedSegmentIndex == 2 {
            self.mapView.mapType = .hybrid
        }
    }
    
    @IBAction func onAddMarker(_ sender: Any) {
        mapView.addAnnotation(Place(name: "Pune", details: "this is very nice ?? place", latitude: 18.520, longitude: 73.8567))
        
        mapView.addAnnotation(Place(name: "Karad", details: "Second branch of Sunbeam", latitude: 17.2777, longitude: 74.1844))
    }
}

