accessing
reference: dir
	"Set the path of the volume to be displayed."
	self okToChange ifFalse: [^ self].
	
	reference := dir 
		ifNotNilDo: [ :d| d asFileReference]
		ifNil: [ FileSystem disk workingDirectory ].
		
	sortMode isNil ifTrue: [sortMode := #date].
	
	volumeList := ((Array with: '[]'), reference pathSegments)  
				withIndexCollect: [:each :i | ( String new: i-1 withAll: $ ), each].
	
	volumeListIndex  := volumeList size.	
		
	self changed: #relabel.
	self changed: #volumeList.
	self updateFileList.