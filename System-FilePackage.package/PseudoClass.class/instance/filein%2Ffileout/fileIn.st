fileIn
	"FileIn the receiver"
	self hasDefinition ifTrue:[self fileInDefinition].
	self fileInMethods: self selectors.
	metaClass ifNotNil:[metaClass fileIn].
	self needsInitialize ifTrue:[
		self evaluate: self name,' initialize'.
	].