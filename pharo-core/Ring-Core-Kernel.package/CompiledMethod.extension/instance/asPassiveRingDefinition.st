*Ring-Core-Kernel
asPassiveRingDefinition

	"Retrieves a passive RGMethodDefinition object based on the data of the receiver.
	Source, protocol and stamp are retrieved from value assigned in creation"
	| ring |
	ring := (RGFactory current createMethodNamed: self selector)
				parentName: self methodClass name;
				isMetaSide: self methodClass isMeta;
				protocol: self category;
				sourceCode: self sourceCode;
				stamp: self timeStamp;
				asPassive.
	^ ring