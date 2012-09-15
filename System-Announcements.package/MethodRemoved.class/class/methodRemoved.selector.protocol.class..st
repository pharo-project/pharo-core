instance creation
methodRemoved: aCompiledMethod selector: aSelector protocol: aProtocol class: aClass
	^self new
			methodRemoved: aCompiledMethod;
			selector: aSelector;
			protocol: aProtocol;
			methodClass: aClass;
			yourself