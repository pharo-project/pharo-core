morphicViewFolderSelector: aDir
	"Answer a tool that allows the user to select a folder"

	| aFileList window fixedSize |
	aFileList := self new directory: aDir.
	aFileList optionalButtonSpecs: aFileList servicesForFolderSelector.
	^ self morphicViewOnFile: aDir contents: nil fileList: aFileList