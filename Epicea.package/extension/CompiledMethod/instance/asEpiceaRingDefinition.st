asEpiceaRingDefinition

	^ (RGMethodDefinition named: self selector)
		parentName: self methodClass name;
		isMetaSide: self methodClass isMeta;
		protocol: self category;
		sourceCode: self sourceCode;
		stamp: self timeStamp;
		package: self package name;
		yourself.
