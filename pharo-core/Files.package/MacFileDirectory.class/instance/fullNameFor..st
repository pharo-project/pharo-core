as yet unclassified
fullNameFor: fileName
	"Return a corrected, fully-qualified name for the given file name. If the given name is already a full path (i.e., it contains a delimiter character), assume it is already a fully-qualified name. Otherwise, prefix it with the path to this directory. In either case, correct the local part of the file name."
	"Details: Note that path relative to a directory, such as '../../foo' are disallowed by this algorithm.  Also note that this method is tolerent of a nil argument -- is simply returns nil in this case."
	"Fix by hmm: for a file in the root directory of a volume on MacOS, the filePath (name of the directory) is not  recognizable as an absolute path anymore (it has no delimiters). Therefore, the original fileName is tested for absoluteness, and the filePath is only made absolute if the original fileName was not absolute"

	| correctedLocalName prefix |
	fileName isEmptyOrNil ifTrue: [^ fileName].
	DirectoryClass splitName: fileName to:
		[:filePath :localName |
			correctedLocalName := localName isEmpty 
				ifFalse: [self checkName: localName fixErrors: true]
				ifTrue: [localName].
			prefix := (DirectoryClass isAbsolute: fileName)
						ifTrue: [filePath]
						ifFalse: [self fullPathFor: filePath]].
	prefix isEmpty
		ifTrue: [^correctedLocalName].
	prefix last = self pathNameDelimiter
		ifTrue:[^ prefix, correctedLocalName]
		ifFalse:[^ prefix, self slash, correctedLocalName]