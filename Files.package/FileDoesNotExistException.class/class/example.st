examples
example
	"FileDoesNotExistException example"

	| result |
	result := [(StandardFileStream readOnlyFileNamed: 'error42.log') contentsOfEntireFile]
		on: FileDoesNotExistException
		do: [:ex | 'No error log'].
	Transcript show: result; cr