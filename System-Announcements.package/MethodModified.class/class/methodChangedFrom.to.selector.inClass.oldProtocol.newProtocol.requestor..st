instance creation
methodChangedFrom: oldMethod to: newMethod selector: selector inClass: aClass oldProtocol: oldProtocol newProtocol: newProtocol requestor: aRequestor
	^self new
			oldMethod: oldMethod;
			newMethod: newMethod;
			selector: selector;
			methodClass: aClass;
			oldProtocol: oldProtocol;
			newProtocol: newProtocol;
			yourself