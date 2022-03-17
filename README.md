# TouchDeviceManager
use for get result from touch health check devcie
device list 
- TemperatureTD1241
- OximeterTD8255
- BloodPressureTD3140
- GlucoseTD4257
- ECGTD4257




Example Temperature Device

     let temperatureDevice = TemperatureTD1241Device()
     //return result   
     //return string .temperature 
     temperatureDevice.getResult = { [weak self] temperature in
         guard let s = self else { return }
         print("temperature = \(temperature.temperature)")
     }

     //return state loading 
     temperatureDevice.stateLoading = { [weak self] stateLoading in
         guard let s = self else { return }
         print("stateLoading = \(stateLoading)")
     }

     //return permission blutooth 
     temperatureDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin processs
     temperatureDevice.startScan()

-----------------------------------------------------------------------------------------------------------------------------------------

Example Oximeter Device

     let oximeterDevice = OximeterTD8255Device()
     //return result   
     //return Int .oxygen 
     //return Int .bpm 
     oximeterDevice.getResult = { [weak self] oximeter in
         guard let s = self else { return }
         print("oxygen = \(oximeter.oxygen), bpm = \(oximeter.bpm)")
     }

     //return state loading 
     oximeterDevice.stateLoading = { [weak self] stateLoading in
         guard let s = self else { return }
         print("stateLoading = \(stateLoading)")
     }

     //return permission blutooth 
     oximeterDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin processs
     oximeterDevice.startScan()

-----------------------------------------------------------------------------------------------------------------------------------------

Example BloodPressure Device

     let bloodPressureDevice = BloodPressureTD3140Device()
     //return result   
     //return Int .pluse 
     //return Int .dia 
     //return Int .sys 
     bloodPressureDevice.getResult = { [weak self] bloodPressure in
         guard let s = self else { return }
         print("pluse = \(bloodPressure.pluse), dia = \(bloodPressure.dia), sys = \(bloodPressure.sys)")
     }

     //return state loading 
     bloodPressureDevice.stateLoading = { [weak self] stateLoading in
         guard let s = self else { return }
         print("stateLoading = \(stateLoading)")
     }

     //return permission blutooth 
     bloodPressureDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin processs
     bloodPressureDevice.startScan()


-----------------------------------------------------------------------------------------------------------------------------------------

Example Glucose Device
 
     let glucoseDevice = GlucoseTD4257Device()
     //return result   
     //return Int .glucose 
     glucoseDevice.getResult = { [weak self] glucose in
         guard let s = self else { return }
         print("glucose = \(glucose.glucose)")
     }

     //return state loading 
     glucoseDevice.stateLoading = { [weak self] stateLoading in
         guard let s = self else { return }
         print("stateLoading = \(stateLoading)")
     }

     //return permission blutooth 
     glucoseDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin processs
     glucoseDevice.startScan()


-----------------------------------------------------------------------------------------------------------------------------------------

Example ECG Device

     let ecgDevice = ECGTD4257Device()
     //return result   
     //return [Int] .graph
     //return String .pulse
     ecgDevice.getResult = { [weak self] ecg in
         guard let s = self else { return }
         print("pulse = \(ecg.pulse)")
     }

     //return state loading 
     ecgDevice.stateLoading = { [weak self] stateLoading in
         guard let s = self else { return }
         print("stateLoading = \(stateLoading)")
     }

     //return permission blutooth 
     ecgDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin processs
     ecgDevice.startScan()
