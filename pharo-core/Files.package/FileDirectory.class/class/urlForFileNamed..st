name utilities
urlForFileNamed: aFilename 
	"Create a URL for the given fully qualified file name"
	"FileDirectory urlForFileNamed: 
	'C:\Home\andreasr\Squeak\DSqueak3\DSqueak3:=1.1\DSqueak3.1.image' "
	| path localName |
	DirectoryClass
		splitName: aFilename
		to: [:p :n | 
			path := p.
			localName := n].
	^ localName asUrlRelativeTo: (self on: path) url asUrl