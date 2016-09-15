//
//  CarController.swift
//  WatchKitNavigation
//
//  Created by Vijendra Khemnar on 12/09/16.
//  Copyright © 2016 Vijendra. All rights reserved.
//

import WatchKit

class CarController: WKInterfaceController {
    
    @IBOutlet var carImage: WKInterfaceImage!
    @IBOutlet var carName: WKInterfaceLabel!
    
    var selectedCar:Car? = nil
    
    override func awakeWithContext(context: AnyObject?) {
        if let carIndex = context as? Int {
            carName.setText("")
            self.selectedCar = Car(rawValue: carIndex)
            carImage.setImageNamed(self.selectedCar!.getCarImageName())
            carName.setText(self.selectedCar?.getCarName())
        }
    }
    
    override func didAppear() {
        super.didAppear()
        if let car = selectedCar {
            CarManager.selectedCar = car

        }
    }
    
}