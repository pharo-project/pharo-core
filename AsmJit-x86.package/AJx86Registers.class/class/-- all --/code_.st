code: registerCode
	"Access a register by its code.
	Example:
		RBP == (self code: RBP code)"
	| registerName |
	self flag: 'XXX now this is some ugly code... add an instance variable for the requiresRex boolean instead of encoding it in #code'.
	registerName := Codes at: registerCode ifAbsent: [ 
				Codes at: registerCode + 16r100 ifAbsent: [ 
					Codes at: registerCode + 16r200 ifAbsent: [  KeyNotFound signalFor: registerCode ] ] ].
	^ self classPool at: registerName