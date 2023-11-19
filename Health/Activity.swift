////
////  Activity.swift
////  Health
////
////  Created by Francesca Pia Sasso on 17/11/23.
////
//
//import SwiftUI
//import WebKit
//import HealthKit
//
//struct Activity: View {
//    @State var progressValue: Float = 0.0
//    
//    var body: some View{
//        VStack{
//            ProgressBar(progress: self.$progressValue)
//                .frame(width: 50.0, height: 50.0)
//                .padding(20.0).onAppear() {
//                    self.progressValue = 0.30
//                }
//            
//        }
//    }
//}
//    
//    struct ProgressBar: View {
//    @Binding var progress: Float
//    var color: Color = Color.red
//    //var progress: Double
//   var body: some View {
//       ZStack{
//           Circle()
//               .stroke(lineWidth: 100.0)
//               .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
//               .foregroundColor(Color.black)
//           
//           Circle()
//               .trim(from: 0.0, to: CGFloat(min(self.progress, 1,0)))
//               .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
//               .foregroundColor(color)
//               .rotationEffect(Angle(degrees: 270))
//               .animation(.easeIn(duration: 0.2))
//       }
//        
//       
//       
//       
//       
//       /*VStack {
//                    ProgressRing(progress: progress, strokeWidth: 10, ringColor: .blue, fillColor: .blue.opacity(0.3))
//                        .frame(width: 100, height: 100)
//                    Text("Your Activity")*/
//                }
//    }
//
//
//
//
//
//#Preview {
//    Activity()
//}
