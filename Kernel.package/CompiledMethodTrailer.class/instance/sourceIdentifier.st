accessing
sourceIdentifier
	"Trailer is used to indicate that method's source code can be retrieved by 
	sending #getSourceCodeByIdentifier: message to method's class" 

	^ (kind == #SourceByStringIdentifier) ifTrue: [ data ] ifFalse: [ nil ].

