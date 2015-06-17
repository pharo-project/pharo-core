saveAsMenuAction
	"Save the receiver's contents string to a file, prompting the user for a file-name.  Suggest a reasonable file-name."
	| suggestedFileName | 
		
	suggestedFileName := self askForFileNameToSave: self suggestedFileName.
	suggestedFileName ifNil: [^ self].
	
	FileStream newFileNamed: suggestedFileName  do: [ :s | "do nothing"].
	self fileName: suggestedFileName.
	self label: suggestedFileName.

	self codeTextMorph ifNotNil: 
		[ :morph | | stringToSave |
		stringToSave :=  morph text string.
		self saveString: stringToSave toFile: suggestedFileName.
		self contents: stringToSave.
		self changed: #contents]