system triggers
methodChangedFrom: oldMethod to: newMethod selector: aSymbol inClass: aClass oldProtocol: oldProtocol newProtocol: newProtocol requestor: requestor
	self trigger: ((ModifiedMethodEvent
					methodChangedFrom: oldMethod
					to: newMethod
					selector: aSymbol 
					inClass: aClass
					requestor: requestor)
					oldProtocol: oldProtocol;
					newProtocol: newProtocol)