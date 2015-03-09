doesNotUnderstand: aMessage 
	"delegate all settings to the unique instance"
	^ self uniqueInstance perform: aMessage selector withEnoughArguments: aMessage arguments