private
activeDirectoryClass
	"Return the concrete FileDirectory subclass for the platform on which we are currently running."

	FileDirectory allSubclasses do: [:class |
		class isActiveDirectoryClass ifTrue: [^ class]].

	"no responding subclass; use FileDirectory"
	^ FileDirectory
