changeRecorderFor: aClassOrString
	| cname |
	cname := aClassOrString printString.	"Later this will init the changeRecords so according to whether they should be revertable."
	^ changeRecords at: cname ifAbsent: [ ^ changeRecords at: cname put: (ClassChangeRecord new initFor: cname) ]