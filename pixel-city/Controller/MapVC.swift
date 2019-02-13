//
//  MapVC.swift
//  pixel-city
//
//  Created by Christopher Parr on 13/02/2019.
//  Copyright © 2019 Christopher Parr. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}
