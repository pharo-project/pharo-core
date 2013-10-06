method: aCompiledMethod selector: aSelector class: aClass newProtocol: aNewProtocol oldProtocol: anOldProtocol

	^self new
			methodRecategorized: aCompiledMethod;
			selector: aSelector;
			methodClass: aClass;
			newProtocol: aNewProtocol;
			oldProtocol: anOldProtocol;
			yourself