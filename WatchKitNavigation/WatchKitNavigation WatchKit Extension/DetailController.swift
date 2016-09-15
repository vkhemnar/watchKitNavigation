//
//  DetailController.swift
//  WatchKitNavigation
//
//  Created by Vijendra Khemnar on 12/09/16.
//  Copyright © 2016 Vijendra. All rights reserved.
//

import WatchKit

class DetailController: WKInterfaceController {
    
    @IBOutlet var carName: WKInterfaceLabel!
    @IBOutlet var carDescription: WKInterfaceLabel!
    @IBOutlet var carCompetition: WKInterfaceLabel!
    
    override func willActivate() {
        super.willActivate()
        
        if let selectedCar = CarManager.selectedCar
        {
            carName.setText(selectedCar.getCarName())
            carDescription.setText(selectedCar.getCarDescription())
            carCompetition.setText(selectedCar.getCarCompetitor())
        }
    }
    
}
