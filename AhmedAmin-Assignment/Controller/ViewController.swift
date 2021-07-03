//
//  ViewController.swift
//  AhmedAmin-Assignment
//
//  Created by Amin  on 7/1/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOfTripsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide number of trips label
        numberOfTripsLabel.isHidden = true
    }
    
    
    @IBAction func startUp(_ sender: Any) {
        
        // Calling pedometer
        let pedometer = Pedometer()
        pedometer.setupActivityManager()
        
        // Get number of trips
        if getnumberOfTrips() != 0 {
            numberOfTripsLabel.isHidden = false
            numberOfTripsLabel.text = "\(getnumberOfTrips())"
        }
        
    }
    
    private func getnumberOfTrips() -> Int {
        return TripCashing.trips.count
    }
    
}



