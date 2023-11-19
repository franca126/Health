import HealthKit

class HealthKitManager {
    // Creiamo una singola istanza condivisa di HealthKitManager accessibile globalmente.
    static let shared = HealthKitManager()

    // Creiamo una proprietà per rappresentare il `HKHealthStore`, che interagirà con HealthKit.
    private let healthStore = HKHealthStore()

    // Questa funzione richiede all'utente l'autorizzazione per accedere ai dati di HealthKit.
    func requestAuthorization(completion: @escaping (Bool, Error?) -> Void) {
        // Verifichiamo che HealthKit sia disponibile sul dispositivo.
        guard HKHealthStore.isHealthDataAvailable() else {
            completion(false, nil)
            return
        }

        // Definiamo i tipi di dati che vogliamo leggere da HealthKit, in questo caso il conteggio dei passi.
        let typesToRead: Set<HKSampleType> = [HKObjectType.quantityType(forIdentifier: .stepCount)!]

        // Richiediamo all'utente l'autorizzazione per leggere i dati specificati.
        healthStore.requestAuthorization(toShare: nil, read: typesToRead) { success, error in
            completion(success, error)
        }
    }

    // Questa funzione avvia l'osservazione dei cambiamenti nei dati di HealthKit relativi al conteggio dei passi.
    func startStepCountUpdates(completion: @escaping (Int, [Double]) -> Void) {
        // Creiamo una query per osservare i cambiamenti nei dati dei passi.
        let query = HKObserverQuery(sampleType: HKObjectType.quantityType(forIdentifier: .stepCount)!, predicate: nil) { _, _, error in
            // Gestiamo eventuali errori durante l'osservazione dei dati.
            if let error = error {
                print("Error observing step count updates: \(error.localizedDescription)")
                return
            }

            // Se non ci sono errori, richiamiamo la funzione per ottenere il conteggio dei passi.
            self.getStepCount(completion: completion)
        }

        // Eseguiamo la query e abilitiamo la notifica in background per i cambiamenti nei dati dei passi.
        healthStore.execute(query)
        healthStore.enableBackgroundDelivery(for: HKObjectType.quantityType(forIdentifier: .stepCount)!, frequency: .immediate) { _, _ in
            print("Background delivery enabled")
        }
    }

    // Questa funzione ottiene il conteggio dei passi e dati correlati da HealthKit.
    func getStepCount(completion: @escaping (Int, [Double]) -> Void) {
        // Implementiamo la logica per ottenere i dati effettivi dei passi.
        // In questo caso, simuliamo dati casuali per scopi dimostrativi.
        let stepCount = Int.random(in: 1000...5000)
        let dataPoints = self.fetchDataPoints()
        completion(stepCount, dataPoints)
    }

    // Questa funzione simula la generazione casuale di dati relativi ai passi per scopi dimostrativi.
    private func fetchDataPoints() -> [Double] {
        // Simuliamo dati di conteggio dei passi casuali per ogni ora nelle ultime 24 ore.
        let dataPoints: [Double] = (0..<24).map { _ in Double.random(in: 1000...5000) }
        return dataPoints
    }
}

