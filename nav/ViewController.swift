//
//  ViewController.swift
//  nav
//
//  Created by Sebastian Hette on 31.01.2017.
//  Copyright © 2017 MAGNUMIUM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBAction func showMeWhere(_ sender: Any)
    {
        //Defining destination
//        17.385044,-95.712891
        
        let latitude:CLLocationDegrees = 37.090240
        let longitude:CLLocationDegrees = 78.486671
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "My House"
        mapItem.openInMaps(launchOptions: options)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

