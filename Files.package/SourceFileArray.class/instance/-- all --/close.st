close
	"Shut down the source files if appropriate. Closing and nilification only takes place if the entry was a FileStream, thus allowing stringified sources to remain in the saved image file. 
	MartinDias, 13-11-2013: Copied from SmalltalkImage>>closeSourceFiles, no idea if isKindOf: is needed."

	1 to: files size do: [ :index |
		((files at: index) isKindOf: FileStream)
			ifTrue: [
				(files at: index) close.
				files at: index put: nil ] ]