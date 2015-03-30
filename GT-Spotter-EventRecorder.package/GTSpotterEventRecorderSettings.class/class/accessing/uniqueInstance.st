uniqueInstance
	"self uniqueInstance"
	^ uniqueInstance ifNil: [ 
			uniqueInstance := self new ].