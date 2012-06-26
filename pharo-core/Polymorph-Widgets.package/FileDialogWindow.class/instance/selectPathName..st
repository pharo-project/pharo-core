as yet unclassified
selectPathName: aString
	"Select the directory and set the file name text
	from the given string."

	|dir local|
	
	(dir := FileSystem disk workingDirectory / aString) isDirectory
		ifTrue: [ ^ self selectDirectory: dir ].
		
	(dir := FileSystem disk root / aString) isDirectory
		ifTrue: [ ^ self selectDirectory: dir].
			
	(dir := aString asFileReference) isDirectory
		ifTrue: [ ^ self selectDirectory: dir].
	
	dir isFile
		ifTrue: [	
			self selectDirectory: dir parent.
			self fileNameText: dir basename].
		
	self selectDirectory: FileSystem disk workingDirectory.
	self fileNameText: ''.