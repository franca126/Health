//
//  Contapassi.swift
//  Health
//
//  Created by Francesca Pia Sasso on 18/11/23.
//

import SwiftUI


struct Contapassi: View {
    @State private var stepCount: Int = 0

    var body: some View {
        VStack {
            Text("Step Count: \(stepCount)")
                .padding()

            Button("Get Step Count") {
                HealthKitManager.shared.requestAuthorization { success, _ in
                    if success {
                        HealthKitManager.shared.getStepCount { count, _ in
                            self.stepCount = count
                        }
                    }
                }
            }
            .padding()
        }
    }
}


#Preview {
    Contapassi()
}
