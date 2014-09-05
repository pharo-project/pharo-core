methodRemoved: aCompiledMethod selector: aSelector protocol: aProtocol class: aClass origin: anOrigin
	^self new
			method: aCompiledMethod;
			selector: aSelector;
			protocol: aProtocol;
			methodClass: aClass;
			methodOrigin: anOrigin;
			yourself