


protocol AdvanceLifeSupport
{
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?
    
    func assessTheSituation(){
        print("can you please tell me what happened? ")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Parametic: AdvanceLifeSupport
{
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR(){
         print("CPR")
    }
    
    
}

let pr = EmergencyCallHandler()
let vi = Parametic(handler: pr)


pr.assessTheSituation()
pr.medicalEmergency()
