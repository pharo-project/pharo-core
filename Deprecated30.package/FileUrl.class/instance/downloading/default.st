default
	"Use the default local Pharo file directory."
	
	| local |
	local := self class pathParts: (FileSystem workingDirectory pathSegments), #('') isAbsolute: true.
	self privateInitializeFromText: self pathString relativeTo: local.
		"sets absolute also"