instance creation
methodChangedFrom: oldMethod to: newMethod selector: aSymbol inClass: aClass requestor: requestor
	| instance |
	instance := self method: newMethod selector: aSymbol class: aClass requestor: requestor.
	instance oldItem: oldMethod.
	^ instance