instance creation
methodChangedFrom: oldMethod to: newMethod selector: aSymbol inClass: aClass
	| instance |
	instance := self method: newMethod selector: aSymbol class: aClass.
	instance oldItem: oldMethod.
	^ instance