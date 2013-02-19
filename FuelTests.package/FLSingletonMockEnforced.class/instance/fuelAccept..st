fuel
fuelAccept: aGeneralMapper
    ^ self == self class instance
        ifTrue: [ 
            aGeneralMapper 
                visitGlobalSend: self 
                name: #FLSingletonMockEnforced 
                selector: #instance ]
        ifFalse: [ super fuelAccept: aGeneralMapper ]