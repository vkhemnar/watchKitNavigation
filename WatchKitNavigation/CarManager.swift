//
//  CarManager.swift
//  WatchKitNavigation
//
//  Created by Vijendra Khemnar on 12/09/16.
//  Copyright © 2016 Vijendra. All rights reserved.
//

import Foundation
import UIKit

struct CarManager
{
    static var selectedCar:Car?
}

enum Car: Int
{
    case Audi3 = 0
    case Audi4
    case Audi6
    case AudiQ3
    case AudiQ7
    
    func getCarName() -> String
    {
        var carName = ""
        switch self
        {
        case .Audi4:
            carName = "Audi - A4"
            break
            
        case .Audi3:
            carName = "Audi - A3"
            break
            
        case .Audi6:
            carName = "Audi - A6"
            break
            
        case AudiQ3:
            carName = "Audi - Q3"
            break
            
        case AudiQ7:
            carName = "Audi - Q7"
            break
        }
        return carName
    }
    
    func getCarImageName() -> String
    {
        var carName = ""
        switch self
        {
        case .Audi4:
            carName = "Audi - A4"
            break
            
        case .Audi3:
            carName = "Audi - A3"
            break
            
        case .Audi6:
            carName = "Audi - A6"
            break
            
        case AudiQ3:
            carName = "Audi - Q3"
            break
            
        case AudiQ7:
            carName = "Audi - Q7"
            break
        }
        return carName
    }
    
    func getCarCompetitor() -> String
    {
        var carName = ""
        switch self
        {
        case .Audi4:
            carName = "The new Audi A4 is a direct competitor of the Mercedes-Benz C-Class, BMW 3 Series, Volvo S60 and the Jaguar XE in India."
            break
            
        case .Audi3:
            carName = "The A 3 sedan is Audi’s answer to Mercedes-Benz CLA and the BMW 1 Series sedan."
            break
            
        case .Audi6:
            carName = "The A6 matrix competes with the Mercedes-Benz E-Class, BMW 5 Series and the Jaguar XF in the luxury sedan segment."
            break
            
        case AudiQ3:
            carName = " X1 facelift and Mercedes-Benz GLA are considered to be direct competitors. "
            break
            
        case AudiQ7:
            carName = "The 2015 Audi Q7 competes with the Mercedes GL, the Volvo XC90, the seven-seater BMW X5 and the Land Rover Discovery."
            break
        }
        return carName
    }
    
    func getCarDescription() -> String
    {
        var carName = ""
        switch self
        {
        case .Audi4:
            carName = "As of now, the new Audi A4 is being offered only the 1.4-litre TSI petrol engine. The 1395cc, four-cylinder turbocharged engine that develops 148bhp and 250Nm of torque is mated to a 7-speed dual clutch automatic gearbox that drives the front wheels."
            break
            
        case .Audi3:
            carName = "The A3 sedan will be available in both petrol and diesel guise in India – the petrol version will be the 1.8-litre TFSI unit developing 177bhp and 250Nm, the oil burner is the 2.0-litre TDI mill with an output of 141bhp and 320Nm."
            break
            
        case .Audi6:
            carName = "The A6 is now available with a single engine option – the 2.0-litre four-cylinder diesel producing 190bhp and 400Nm. The Multi-Tronic CVT gearbox of the previous car has been replaced by the dual-clutch S-Tronic transmission that powers the front wheels."
            break
            
        case AudiQ3:
            carName = "Since this is a facelift, unsurprisingly, there are no mechanical changes in the new Audi Q3. It continues to derive power from the reliable 2.0-litre TDI engine developing 177bhp and 380Nm of torque. "
            break
            
        case AudiQ7:
            carName = "The Q7 is being offered with the 3.0-litre TDI diesel mill which produces 272bhp and 600Nm of torque."
            break
        }
        return carName
    }
    
    static func getRandomCar() -> Car
    {
        let rand = Int(arc4random_uniform(5))
        return Car(rawValue: rand)!
    }
    
    static func getCarList()->[Car]
    {
        var carList:[Car] = [Car]()
        var i = 0
        while i<5 {
            carList.append(Car(rawValue:i)!)
            i = i + 1
        }
        return carList
    }
}
