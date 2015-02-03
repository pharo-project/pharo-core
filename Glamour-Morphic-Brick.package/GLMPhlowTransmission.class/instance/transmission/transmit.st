transmit
	|portValues value|
	
	portValues := self gatherPortValues.
	
	"we transmit only if meets condition"
	(self meetsCondition: portValues) ifFalse: [ ^ self ].
	"obtaining slot value and transforming it"
	value := self transformation phlowValue: self destination phlowObject withEnoughArguments: portValues.
	"transmiting transformed value to destination port"
	self destination phlowValue: value value: self phlow.
	"performing specified action"
	self action phlowValue: self destination phlowObject value: value
	