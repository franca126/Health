//import SwiftUI
//import Charts
//
//struct BarChartView: View {
//    @State private var stepsDictionary: [String: Int] = [:]
//
//    var body: some View {
//        VStack {
//            if !stepsDictionary.isEmpty {
//                BarChartSwiftUIView(stepsDictionary: stepsDictionary)
//                    .frame(width: 300, height: 200)
//            } else {
//                Text("Loading...")
//            }
//        }
//        .onAppear {
//            fetchStepsData()
//        }
//    }
//
//    func fetchStepsData() {
//        // Call the function to get steps data
//        stepsLast7Days { stepsData in
//            self.stepsDictionary = stepsData
//        }
//    }
//}
//
//struct BarChartSwiftUIView: UIViewRepresentable {
//    let stepsDictionary: [String: Int]
//
//    func makeUIView(context: Context) -> BarChartView {
//        return BarChartView()
//    }
//
//    func updateUIView(_ uiView: BarChartView, context: Context) {
//        // Update the BarChartView with the new data
//        uiView.updateChart(with: stepsDictionary)
//    }
//}
//
//extension BarChartView {
//    func updateChart(with stepsDictionary: [String: Int]) {
//        // Implement your chart update logic here
//        // This could be similar to the update logic in the previous SwiftUI example
//    }
//}
//
//struct barchartview: PreviewProvider {
//    static var previews: some View {
//        BarChartView()
//    }
//}
