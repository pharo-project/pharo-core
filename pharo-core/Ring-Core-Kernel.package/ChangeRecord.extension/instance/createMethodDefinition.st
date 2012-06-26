*Ring-Core-Kernel
createMethodDefinition
	"Retrieves a RGMethodDefinition object based on the data of the receiver"
	
	^(RGFactory current createMethodNamed: self methodSelector)
		parentName: self methodClass name;
		isMetaSide: meta;  
		sourceCode: self string;
		protocol: category;
		stamp: stamp;
		yourself