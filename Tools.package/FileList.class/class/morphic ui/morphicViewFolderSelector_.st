morphicViewFolderSelector: aDir
	"Answer a tool that allows the user to select a folder"
	|  window buttonRow fileListTopOffset aFileList |
	aFileList := self new directory: aDir.
	aFileList optionalButtonSpecs: aFileList servicesForFolderSelector.
	window := (SystemWindow labelled: aDir fullName) model: aFileList.
	aFileList modalView: window.
	buttonRow := aFileList folderSelectButtonRow.
	aFileList universalButtonServices do: 
			[:service |
				buttonRow addMorphBack: (service buttonToTriggerIn: self)].
	fileListTopOffset := (TextStyle defaultFont pointSize * 2) + 11.
	
	self addFullPanesTo: window from: {
		{aFileList morphicDirectoryTreePane. (0@0 corner: 1@1) asLayoutFrame topOffset: (fileListTopOffset)}.
		{buttonRow  . (0@0 corner: 1@0) asLayoutFrame bottomOffset: (fileListTopOffset-3)}.
	}.
	
	aFileList postOpen.
	^ window 