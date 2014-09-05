methodChangedFrom: oldMethod to: newMethod selector: selector inClass: aClass oldProtocol: oldProtocol newProtocol: newProtocol requestor: aRequestor
	^self new
		method: newMethod;
		oldMethod: oldMethod;
		oldProtocol: oldProtocol;
		yourself