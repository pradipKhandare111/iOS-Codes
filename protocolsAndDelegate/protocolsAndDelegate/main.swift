protocol AdvanceLifeSupport {
    func performCPR()
}


class EmergencyCallHandler
{
    var delegate: AdvanceLifeSupport?
    
    func assessSituation()
    {
        print("can you tell me what happenned?")
    }
    
    func medicalEmmergency()
    {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("parametic does chest comnpression")
    }

}
let emilio = EmergencyCallHandler()
let pet = Paramedic(handler: emilio)
