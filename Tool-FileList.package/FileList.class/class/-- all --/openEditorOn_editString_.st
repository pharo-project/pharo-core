openEditorOn: aFileStream editString: editString 
	"Open an editor on the given FileStream."
	| editor |
	editor :=  self 
		morphicViewOnFile: aFileStream fullName asFileReference 
		contents: editString
		fileList: (self new setFileStream: aFileStream).
	
	^ editor openInWorld