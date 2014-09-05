method: aCompiledMethod selector: aSelector class: aClass newProtocol: aNewProtocol oldProtocol: anOldProtocol

	^self new
		method: aCompiledMethod;
		oldProtocol: anOldProtocol;
		yourself