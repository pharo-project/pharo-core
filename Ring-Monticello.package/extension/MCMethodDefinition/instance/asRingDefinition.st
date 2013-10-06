asRingDefinition

	^(RGFactory current createMethodNamed:  self selector)
		parentName: self className;
		isMetaSide: self classIsMeta;
		protocol: self category;
		sourceCode: self source;    
		stamp: self timeStamp