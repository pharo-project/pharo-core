methods
methodChange: aChangeRecord
	aChangeRecord isMetaClassChange ifTrue:[
		^self metaClass addMethodChange: aChangeRecord.
	] ifFalse:[
		^self addMethodChange: aChangeRecord.
	].
