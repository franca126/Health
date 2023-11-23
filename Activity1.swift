//
//  Activity.swift
//  Health
//
//  Created by Francesca Pia Sasso on 19/11/23.
//

import SwiftUI
import UIKit
import CoreMotion

//let salmonColor = Color(red: 250/255, green: 128/255, blue: 114/255)
private var pedometer: CMPedometer = CMPedometer()

struct Activity: View {
    @StateObject var StepCounter = StepCounterViewModel()
    
    var body: some View {
        VStack{
            
            NavigationView {
                
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color("ActivityCol"), Color(.systemGray6)]), startPoint: .topLeading, endPoint: .init(x: 0, y: 0.3)) .opacity(0.7)
                        .ignoresSafeArea()
                    
                    ScrollView {
                        
                        VStack {
                            Text("Today")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .offset(x: -145, y: 16)
                                .padding()
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.white)
                                    .cornerRadius(15)
                                    .frame(width: 350, height: 150)
                                VStack{
                                    HStack
                                     {
                                        Image(systemName: "flame.fill")
                                            .font(.system(size: 18))
                                            .foregroundColor(.activityCol)
                                        
                                        Text("Steps")
                                            .font(.system(size: 15))
                                            .bold()
                                            .foregroundColor(.activityCol)
                                            .accessibility(label: Text("Steps"))  // Aggiungi un'etichetta descrittiva
                                               .accessibility(identifier: "stepsLabel")
                                     } .offset(x:-120,y:15)
                    
                                    Spacer()
                                    
                                    HStack {
                                        Text("\(self.StepCounter.steps)") 
                                            .foregroundColor(.black)// Usa il valore degli steps dall'ambiente
                                            .font(.system(size: 25))
                                            .fontWeight(.heavy)
                                            .accessibility(label: Text("\(self.StepCounter.steps)"))  // Aggiungi un'etichetta descrittiva
                                               .accessibility(identifier: "stepsLabel")
                                        
                                        
                                        Text("steps")
                                            .font(.system(size: 15))
                                            .bold()
                                            .foregroundColor(.gray)
                                    } .frame(maxWidth:295, alignment: .bottomLeading)
                                    .padding()
                                    
                                    
                                }
                                    
                            }
//                                        .frame(maxWidth: .infinity, alignment: .bottomLeading)  // Imposta l'allineamento in basso a sinistra
//                                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))  // Aggiungi spaziatura
                                
                            
                            
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(15)
                                .frame(width: 360, height: 150)
                                .overlay(
                                    HStack {
                                        Image(systemName: "flame.fill")
                                            .font(.system(size: 18))
                                            .foregroundColor(.activityCol)
                                        
                                        
                                        Text("Activity")
                                            .font(.system(size: 15))
                                            .bold()
                                            .foregroundColor(.activityCol)
                                        
                                    } .offset(x:-120, y: -50)
                                )
                                .padding(6)
                            
                            
                            
                            
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(15)
                                .frame(width: 350, height: 150)
                                .overlay(
                                    HStack (alignment: .top) {
                                        Image(systemName: "flame.fill")
                                            .font(.system(size: 18))
                                            .foregroundColor(.activityCol)
                                        
                                        
                                        Text("Walking + Running Distance")
                                            .font(.system(size: 15))
                                            .bold()
                                            .foregroundColor(.activityCol)
                                    } .offset(x:-45, y: -50)
                                )
                                .padding(6)
                            
                            
                            
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(15)
                                .frame(width: 350, height: 150)
                                .overlay(
                                    HStack {
                                        Image(systemName: "flame.fill")
                                            .font(.system(size: 18))
                                            .foregroundColor(.activityCol)
                                        
                                        
                                        Text("Active Energy")
                                            .font(.system(size: 15))
                                            .bold()
                                            .foregroundColor(.activityCol)
                                    } .offset(x:-95, y: -50)
                                )
                                .padding(6)
                            
                            
                            
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(15)
                                .frame(width: 350, height: 150)
                                .overlay(
                                    HStack {
                                        Image(systemName: "flame.fill")
                                            .font(.system(size: 18))
                                            .foregroundColor(.activityCol)
                                        
                                        
                                        Text("Resting Energy")
                                            .font(.system(size: 15))
                                            .bold()
                                            .foregroundColor(.activityCol)
                                    } .offset(x:-90, y: -50)
                                )
                                .padding(6)
                            
                            
                        }.navigationTitle("Activity")
                        
                    }
                    
                }
            }
        }
    }
    
    struct Activity_Previews: PreviewProvider {
        static var previews: some View {
            Activity()
        }
    }
}
