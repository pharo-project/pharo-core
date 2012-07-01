file paths
absolutePathFor: path locationType: aSymbol
	"answer an absolute path from an absolute or relative path according to the location type aSymbol"

	aSymbol = #imageRelative
		 ifTrue:[ ^ (Smalltalk imageDirectory  / path) fullName ].
	aSymbol = #vmRelative 
		ifTrue:[ ^ (Smalltalk vmDirectory / path) fullName].
		
	^ path
	
	
	
			
	
	