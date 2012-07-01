file directory
assureExistenceOfPath: lPath
	"Make sure the local directory exists. If necessary, create all parts in between"
	| localPath |
	localPath := lPath.
	localPath isEmpty ifTrue: [ ^self ]. "Assumed to exist"
	(self directoryExists: localPath) ifTrue: [^ self]. "exists"
	"otherwise check parent first and then create local dir"
	self containingDirectory assureExistenceOfPath: self localName.
	self createDirectory: localPath