# TouchDeviceManager
use for get result from touch health check devcie
device list 
- TemperatureTD1241
- TemperatureAOJ20A
- OximeterTD8255
- OximeterADFB05
- BloodPressureTD3140
- GlucoseTD4257
- GlucoseTGHGLC01
- ECGTD4257
- MultiMonitoringBeneCheck
- BodyTape



Example TemperatureTD1241Device

     let temperatureDevice = TemperatureTD1241Device(autoResult: true)
     
     //return state loading 
     //return string .temperature on .success
     temperatureDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let temperaturInfo):
                print("loading success")
                print("temperature = \(temperaturInfo.temperature)")
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
    
     //return state loading 
     //return string .temperature on .success
     temperatureDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let temperaturInfo):
                print("loading success")
                print("temperature = \(temperaturInfo.temperature)")
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

     //return state loading 
     //return Int .oxygen on .success
     //return Int .bpm on .success
     oximeterDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let oximeterInfo):
                print("loading success")
                print("oxygen = \(oximeter.oxygen), bpm = \(oximeter.bpm)")
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
     
 
     //return state loading 
     //return Int .oxygen on .success
     //return Int .bpm on .success
     oximeterDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let oximeterInfo):
                print("loading success")
                print("oxygen = \(oximeter.oxygen), bpm = \(oximeter.bpm)")
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
     
     //return state loading 
     //return Int .pulse on .success
     //return Int .dia on .success
     //return Int .sys on .success
     bloodPressureDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let bloodPressureInfo):
                print("loading success")
                print("pluse = \(bloodPressure.pulse), dia = \(bloodPressure.dia), sys = \(bloodPressure.sys)")
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

     //return state loading 
     //return Int .glucose 
     glucoseDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let glucoseInfo):
                print("loading success")
                print("glucose = \(glucose.glucose)")
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

Example GlucoseTGHGLC01
 
     let glucoseDevice = GlucoseTGHGLC01Device(autoResult: true)

     //return state loading 
     //return Int .glucose 
     glucoseDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let glucoseInfo):
                print("loading success")
                print("glucose = \(glucose.glucose)")
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     glucoseDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected GlucoseTGHGLC01Device")
            case .disconnect:
                print("disconnect GlucoseTGHGLC01Device")
            }
     }
        
     //begin process
     glucoseDevice.startScan()


-----------------------------------------------------------------------------------------------------------------------------------------

Example ECGTD4257Device

     let ecgDevice = ECGTD4257Device(autoResult: true)

     //return state loading 
     //return [Int] .graph
     //return String .pulse
     ecgDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let ecgInfo):
                print("loading success")
                print("pulse = \(ecg.pulse), graph = \(ecg.graph)")
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
     
     //return state loading 
     //return Int .value
     //return MultiMonitoringBeneCheckType .type
     multiMonitoringBeneCheckDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let multiMonitoringBeneCheck):
                print("loading success")
                s.labelValue.text = "\(multiMonitoringBeneCheck.value)"

                switch multiMonitoringBeneCheck.type {
                    case .glucose:
                s.labelType.text = "Glucose"
                    case .cholesterol:
                s.labelType.text = "Cholesterol"
                    case .uric:
                s.labelType.text = "Uric"
            }

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


-----------------------------------------------------------------------------------------------------------------------------------------

Example BodyTape
 
     let bodyTapeDevice = BodyTapeDevice(autoResult: true)

     //return state loading 
     //return Double .measure
     //return BodyTapeUnitType .unit

     bodyTapeDevice.stateLoading = { [weak self] stateLoading in
            guard let s = self else { return }
    
            switch stateLoading {
            case .loading:
                print("loading")
            case .success(let bodyTapeInfo):
                print("loading success")
                print("measure = \(bodyTapeInfo.measure)")
                print("unit = \(bodyTapeInfo.unit.rawvalue)") // "in" || "cm"
            case .error(let error):
                print("error \(error)")
            }
            
     }

     //return state connection 
     bodyTapeDevice.stateConnection = { [weak self] stateConnection in
            guard let s = self else { return }
            
            switch stateConnection {
            case .connect:
                print("connected BodyTapeDevice")
            case .disconnect:
                print("disconnect BodyTapeDevice")
            }
     }
        
     //begin process
     bodyTapeDevice.startScan()


