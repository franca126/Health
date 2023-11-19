//import HealthKit
//
//class HealthKitManager {
//    static let shared = HealthKitManager()
//
//    private let healthStore = HKHealthStore()
//
//    func requestAuthorization(completion: @escaping (Bool, Error?) -> Void) {
//        guard HKHealthStore.isHealthDataAvailable() else {
//            completion(false, nil)
//            return
//        }
//
//        let typesToRead: Set<HKSampleType> = [HKObjectType.quantityType(forIdentifier: .stepCount)!]
//
//        healthStore.requestAuthorization(toShare: nil, read: typesToRead) { success, error in
//            completion(success, error)
//        }
//    }
//
//    func getStepCount(completion: @escaping (Int, Error?) -> Void) {
//        let stepType = HKObjectType.quantityType(forIdentifier: .stepCount)!
//
//        let query = HKStatisticsQuery(quantityType: stepType,
//                                      quantitySamplePredicate: nil,
//                                      options: .cumulativeSum) { _, result, error in
//            guard let result = result, let sum = result.sumQuantity() else {
//                completion(0, error)
//                return
//            }
//
//            let stepCount = Int(sum.doubleValue(for: HKUnit.count()))
//            completion(stepCount, nil)
//        }
//
//        healthStore.execute(query)
//    }
//}
