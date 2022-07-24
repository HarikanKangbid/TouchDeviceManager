# TouchDeviceManager
use for get result from touch health check devcie
device list 
- TemperatureTD1241
- TemperatureAOJ20A
- OximeterTD8255
- OximeterADFB05
- BloodPressureTD3140
- GlucoseTD4257
- ECGTD4257
- MultiMonitoringBeneCheck


Example TemperatureTD1241Device

     let temperatureDevice = TemperatureTD1241Device(autoResult: true)
     
     //return result   
     //return string .temperature 
     temperatureDevice.getResult = { [weak self] temperature in
         guard let s = self else { return }
         print("temperature = \(temperature.temperature)")
     }

     //return state loading 
     temperatureDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     temperatureDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected TemperatureTD1241Device")
            case .disconnect:
                print("disconnect TemperatureTD1241Device")
            }
      }


     //return permission bluetooth 
     temperatureDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     temperatureDevice.startScan()

-----------------------------------------------------------------------------------------------------------------------------------------

Example TemperatureAOJ20ADevice

     let temperatureDevice = TemperatureAOJ20ADevice(autoResult: true)
     
     //return result   
     //return string .temperature 
     temperatureDevice.getResult = { [weak self] temperature in
         guard let s = self else { return }
         print("temperature = \(temperature.temperature)")
     }

     //return state loading 
     temperatureDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     temperatureDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected TemperatureAOJ20ADevice")
            case .disconnect:
                print("disconnect TemperatureAOJ20ADevice")
            }
      }


     //return permission bluetooth 
     temperatureDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     temperatureDevice.startScan()

-----------------------------------------------------------------------------------------------------------------------------------------

Example OximeterTD8255Device

     let oximeterDevice = OximeterTD8255Device(autoResult: true)

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
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     oximeterDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected OximeterTD8255Device")
            case .disconnect:
                print("disconnect OximeterTD8255Device")
            }
      }

     //return permission bluetooth 
     oximeterDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     oximeterDevice.startScan()

-----------------------------------------------------------------------------------------------------------------------------------------

Example OximeterADFB05Device

     let oximeterDevice = OximeterADFB05Device(autoResult: true)
     
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
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     oximeterDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected OximeterADFB05Device")
            case .disconnect:
                print("disconnect OximeterADFB05Device")
            }
      }

     //return permission bluetooth 
     oximeterDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     oximeterDevice.startScan()

-----------------------------------------------------------------------------------------------------------------------------------------

Example BloodPressureTD3140Device

     //repeatResult set for return result for finish
     let bloodPressureDevice = BloodPressureTD3140Device(autoResult: true, repeatResult: false)
     
     //return result   
     //return Int .pulse 
     //return Int .dia 
     //return Int .sys 
     bloodPressureDevice.getResult = { [weak self] bloodPressure in
         guard let s = self else { return }
         print("pluse = \(bloodPressure.pulse), dia = \(bloodPressure.dia), sys = \(bloodPressure.sys)")
     }

     //return state loading 
     bloodPressureDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     bloodPressureDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected BloodPressureTD3140Device")
            case .disconnect:
                print("disconnect BloodPressureTD3140Device")
            }
      }

     //return permission bluetooth 
     bloodPressureDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     bloodPressureDevice.startScan()


-----------------------------------------------------------------------------------------------------------------------------------------

Example GlucoseTD4257Device
 
     let glucoseDevice = GlucoseTD4257Device(autoResult: true)

     //return result   
     //return Int .glucose 
     glucoseDevice.getResult = { [weak self] glucose in
         guard let s = self else { return }
         print("glucose = \(glucose.glucose)")
     }

     //return state loading 
     glucoseDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     glucoseDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected GlucoseTD4257Device")
            case .disconnect:
                print("disconnect GlucoseTD4257Device")
            }
     }
        
     //begin process
     glucoseDevice.startScan()


-----------------------------------------------------------------------------------------------------------------------------------------

Example ECGTD4257Device

     let ecgDevice = ECGTD4257Device(autoResult: true)

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
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     ecgDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected ECGTD4257Device")
            case .disconnect:
                print("disconnect ECGTD4257Device")
            }
     }

     //return permission bluetooth 
     ecgDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     ecgDevice.startScan()

     -----------------------------------------------------------------------------------------------------------------------------------------

Example MultiMonitoringBeneCheckDevice

     let multiMonitoringBeneCheckDevice = MultiMonitoringBeneCheckDevice(autoResult: true)
     
     //return result   
     //return Int .value
     //return MultiMonitoringBeneCheckType .type
      multiMonitoringBeneCheckDevice.getResult = { [weak self] multiMonitoringBeneCheck in
            guard let s = self else { return }
            s.labelValue.text = "\(multiMonitoringBeneCheck.value)"
            
            switch multiMonitoringBeneCheck.type {
            case .glucose:
                s.labelType.text = "Glucose"
            case .cholesterol:
                s.labelType.text = "Cholesterol"
            case .uric:
                s.labelType.text = "Uric"
            }
     }

     //return state loading 
     multiMonitoringBeneCheckDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success:
                print("loading success")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     multiMonitoringBeneCheckDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected MultiMonitoringBeneCheckDevice")
            case .disconnect:
                print("disconnect MultiMonitoringBeneCheckDevice")
            }
     }

     //return permission bluetooth 
     multiMonitoringBeneCheckDevice.stateCentralManager = { [weak self] stateCentralManager in
         guard let s = self else { return }
         print("stateCentralManager = \(stateCentralManager)")
     }
        
     //begin process
     multiMonitoringBeneCheckDevice.startScan()

