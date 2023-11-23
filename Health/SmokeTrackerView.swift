import SwiftUI
import CoreMotion

struct SmokeTrackerView: View {
    @State var smokeCount : Float = 0
    @State var AVsmoke : Float = 0
    @State var money : Int = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient( gradient: Gradient(colors: [Color(.systemGray), Color(.systemGray6)]),startPoint: .topLeading,endPoint: .init(x: 0, y: 0.3)) .opacity(0.7) .ignoresSafeArea()

                ScrollView {
                    VStack {
                    
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(15)
                            .frame(width: 350, height: 150)
                            .overlay(
                                VStack {
                                    HStack(spacing:-6){
                                        Image(systemName: "wind")
                                            .foregroundColor(.gray)
                                        
                                        Text("Average cigarettes smoked")
                                            .font(.system(size: 15))  .fontWeight(.bold)
                                            .padding()
                                            .foregroundColor(.gray)
                                        
                                    }.offset(x:-40,y:-15)
                                    
                                    HStack(spacing: 30) {
                                        Button(action: {
                                            if self.AVsmoke > 0 {
                                                self.AVsmoke -= 1 }}) {
                                            Image(systemName: "minus.circle")
                                                .font(.system(size: 40))
                                                .foregroundColor(.gray) }
                                        Text("\(AVsmoke, specifier: "%.0f")")
                                        .bold().font(.system(size: 50)).foregroundColor(.black)
                                        Button(action: {
                                            self.AVsmoke += 1
                                        }) {
                                            Image(systemName: "plus.circle")
                                                .font(.system(size: 40))
                                                .foregroundColor(.gray)}}}) .padding(.horizontal, 45)
                        
                        
                        
                        
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(15)
                            .frame(width: 350, height: 150)
                            .overlay(
                                VStack {
                                    HStack(spacing:-6){
                                        Image(systemName: "wind")
                                            .foregroundColor(.gray)
                                        
                                        Text("Today's cigarettes")
                                            .font(.system(size: 15))  .fontWeight(.bold)
                                            .padding()
                                            .foregroundColor(.gray)
                                        
                                    }.offset(x:-70,y:-15)
                                    
                                    
                                    
                                    HStack(spacing: 30) {
                                        Button(action: {
                                            if self.smokeCount > 0 {
                                                self.smokeCount -= 1}}) {
                                            Image(systemName: "minus.circle")
                                                .font(.system(size: 40))
                                                .foregroundColor(.gray)}
                                        Text("\(smokeCount, specifier: "%.0f")")
                                            .bold().font(.system(size: 50)).foregroundColor(.black)
                                        
                                        Button(action: {
                                            self.smokeCount += 1
                                        }) {
                                            Image(systemName: "plus.circle")
                                                .font(.system(size: 40))
                                                .foregroundColor(.gray)
                                            
                                            
                                            
                                        } 
                                    }
                                }
                            )
                            .padding(.horizontal, 45)
                        
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(15)
                            .frame(width: 350, height: 150)
                            .overlay(
                        VStack{
                            HStack(spacing: -6){
                                Image(systemName: "wind")
                                    .foregroundColor(.gray)
                                Text("Money Saved")
                                    .font(.system(size: 15))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .foregroundColor(.gray)
                            }.offset(x:-90,y:-15)
                            
                            let difference = AVsmoke - smokeCount
             let result = difference * 0.20
                Text(" \(result, specifier: "%.2f")")
                                .bold()
                                .font(.system(size: 50))
                            
                        
                        }
                        
                        )
                        
                    }
                    
//                   
                        
                       
  
                    }
                                .navigationTitle("Smoke Tracker")
                }
            }
            
            
        }
    }


struct SmokeTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        SmokeTrackerView(smokeCount: 0, AVsmoke: 0, money: 0)
    }
}

