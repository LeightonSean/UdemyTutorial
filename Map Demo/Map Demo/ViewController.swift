//
//  ViewController.swift
//  Map Demo
//
//  Created by Sean Leighton on 2/14/16.
//  Copyright © 2016 Sean Leighton. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        var lat:CLLocationDegrees = 43.088891;
        var lon:CLLocationDegrees = -70.777370;
        
        //Zoomed in/out
        var latDelta:CLLocationDegrees = 0.01;
        var lonDelta:CLLocationDegrees = 0.01;
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta);
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lon);
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location,span);
        
        map.setRegion(region, animated: true);
        
        
        
        var annotation = MKPointAnnotation();
        annotation.coordinate = location;
        annotation.title = "Portsmouth House";
        annotation.subtitle = "This is where I live";
        
        map.addAnnotation(annotation);
        
        
        var uilpgr = UILongPressGestureRecognizer(target: self, action: "action:");
        uilpgr.minimumPressDuration = 2;
        map.addGestureRecognizer(uilpgr);
        
    
    }
    
    func action(gestureRecognizer: UIGestureRecognizer){
        
        print("User Placed Point");
        
        var touchPoint = gestureRecognizer.locationInView(self.map);
        var newCoordinate:CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map);
        var annotation = MKPointAnnotation();
        annotation.coordinate = newCoordinate;
        annotation.title = "User Defined Location";
        annotation.subtitle = "Where is this user?";
        
        map.addAnnotation(annotation);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

