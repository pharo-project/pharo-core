openMorphOn: aFileStream editString: editString 
	"Open a morphic view of a FileList on the given file."
	^ self 
		morphicViewOnFile: aFileStream fullName asFileReference 
		contents: editString
		fileList: (self new setFileStream: aFileStream).