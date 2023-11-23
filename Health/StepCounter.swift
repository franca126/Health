////
////  StepCounter.swift
////  Health
////
////  Created by Francesca Pia Sasso on 21/11/23.
////
//
//import SwiftUI
//import CoreMotion
//
//struct StepCounter: View {
//    @ObservedObject private var viewModel = StepCounterViewModel()
//       
//private var pedometer: CMPedometer = CMPedometer()
//
//@State private var steps: Int = 0
//    
//private  var isPedometerAvailable: Bool {
//    return CMPedometer.isPedometerEventTrackingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable()
//}
//
//private func initializePedometer() {
//    if isPedometerAvailable {
//        guard let startDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())
//        else {
//            return
//        }
//        
//        pedometer.queryPedometerData(from: startDate, to: Date()) {(data, error) in
//            guard let data = data, error == nil else {return}
//            
//            steps = data.numberOfSteps.intValue
//            
//        }
//        
//    }
//    
//    
//}
//
//    var body: some View {
//            Text("\(viewModel.steps)").padding()
//                .onAppear {
//                    viewModel.initializePedometer()
//                }
//        }
//    }
//#Preview {
//    StepCounter()
//}
