asActiveRingDefinition

	"Retrieves an active RGMethodDefinition object based on the data of the receiver.
	Source, protocol and stamp are retrieved from the compiled method"
	| ring |
	ring := (RGFactory current createMethodNamed: self selector)
				parentName: self methodClass name;
				isMetaSide: self methodClass isMeta;
				asActive.
	^ ring