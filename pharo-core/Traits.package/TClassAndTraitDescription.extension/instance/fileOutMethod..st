filein/out
fileOutMethod: selector
	"Write source code of a single method on a file.  Make up a name for the file."
	
	| internalStream |
	(selector == #Comment) ifTrue: [^ self inform: 'Sorry, cannot file out class comment in isolation.'].
	(self includesSelector: selector) ifFalse: [^ self error: 'Selector ', selector asString, ' not found'].
	internalStream := (String new: 1000) writeStream.
	internalStream header; timeStamp.
	self printMethodChunk: selector withPreamble: true
		on: internalStream moveSource: false toFile: 0.

	FileStream writeSourceCodeFrom: internalStream baseName: (self name , '-' , (selector copyReplaceAll: ':' with: '')) isSt: true.