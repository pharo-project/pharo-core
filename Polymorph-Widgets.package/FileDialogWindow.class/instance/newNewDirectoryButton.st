as yet unclassified
newNewDirectoryButton
	"Answer a new 'new directory' button."

	^self 
		newButtonFor: self
		getState: nil
		action: #newDirectory
		arguments: nil
		getEnabled: nil
		labelForm: self theme smallOpenIcon
		help: 'Press to create a new directory within the current directory' translated