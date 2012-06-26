accessing
sourceIdentifier: aString

	"Trailer is used to indicate that method's source code can be retrieved by 
	sending #getSourceCodeByIdentifier: message to method's class" 
	
	self clear.
	data := aString.
	kind := #SourceByStringIdentifier.
	self encode.
