triggering
methodChangedFrom: oldMethod to: newMethod selector: aSymbol inClass: aClass oldProtocol: oldProtocol newProtocol: newProtocol requestor: requestor
	self announce: (MethodModified
					methodChangedFrom: oldMethod
					to: newMethod
					selector: aSymbol 
					inClass: aClass
					oldProtocol: oldProtocol
					newProtocol: newProtocol
					requestor: requestor)