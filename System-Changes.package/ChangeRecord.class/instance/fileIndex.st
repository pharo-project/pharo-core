access
fileIndex
	^ (SourceFiles collect: [ :sf | sf name]) 
		indexOf: file name ifAbsent: [^ nil].
