//
//  InterfaceController.swift
//  WatchKitNavigation WatchKit Extension
//
//  Created by Vijendra Khemnar on 12/09/16.
//  Copyright © 2016 Vijendra. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var carImage: WKInterfaceImage!
    @IBOutlet var label: WKInterfaceLabel!
    
    @IBAction func changeCar()
    {
        let carList = [0,1,2,3,4]
        let names: [String] = carList.map { c in "CarView" }
        presentControllerWithNames(names, contexts: carList)
    }
    
    override func willActivate() {
        super.willActivate()
        if let selectedCar = CarManager.selectedCar
        {
            carImage.setImageNamed(selectedCar.getCarName())
            label.setText(selectedCar.getCarName())
        }
        else
        {
            let car = Car.getRandomCar()
            carImage.setImageNamed(car.getCarName())
            label.setText(car.getCarName())
            CarManager.selectedCar = car
        }
    }

}
