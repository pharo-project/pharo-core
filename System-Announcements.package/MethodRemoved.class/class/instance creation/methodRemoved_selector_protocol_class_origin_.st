methodRemoved: aCompiledMethod selector: aSelector protocol: aProtocol class: aClass origin: anOrigin
	^self new
		method: aCompiledMethod;
		protocol: aProtocol;
		yourself