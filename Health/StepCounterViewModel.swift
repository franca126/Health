//
//  StepCounterViewModel.swift
//  Health
//
//  Created by Francesca Pia Sasso on 21/11/23.
//

import Foundation
import CoreMotion

class StepCounterViewModel: ObservableObject {
    @Published var steps: Int = 0
    var isPedometerAvailable: Bool = false

    var pedometer: CMPedometer?
    var activitymanager: CMMotionActivityManager?
    
    
    var midnight: Date{
        let cal = Calendar(identifier: .gregorian)
        return cal.startOfDay(for: Date.now)
    }

    init() {
        pedometer = CMPedometer()
        activitymanager = CMMotionActivityManager()
        
        initializePedometer()
    }

    private func initializePedometer() {
        if CMPedometer.isPedometerEventTrackingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable() {
            isPedometerAvailable = true
            print("OK")
            
            
            /*pedometer.queryPedometerData(from: Date(), to: Date()) { data, error in
                guard let data = data, error == nil else { return }

                self.steps = data.numberOfSteps.intValue
                self.objectWillChange.send()
            }*/
            
            activitymanager?.startActivityUpdates(to: OperationQueue.main) { (activity: CMMotionActivity?) in
                guard let activity = activity else {return}
                
                DispatchQueue.main.async{
                    if activity.stationary {
                        print("Stationary")
                        
                    } else if  activity.walking {
                        print ("walking")
                    } else if activity.running {
                        print ("running")
                        
                    } else if activity.automotive {
                        print ("automative")
                    }
                    
                }
            }
            
            pedometer?.startUpdates(from: midnight, withHandler: { data, err in
                guard let data = data, err == nil else {
                    return
                }
                DispatchQueue.main.async{
                    print("\(data.numberOfSteps.intValue)")
                    self.steps = data.numberOfSteps.intValue
                }
                
            })
            
            /*pedometer?.startEventUpdates(handler: { data, err in
                print("\(data?.type)")
            })*/
            
        } else {
            isPedometerAvailable = false
            print("NOT OK")
        }
    }
}
