updateFontsFromSystem
	
	| done |
	
	FT2Library current ifNil: [ ^ self  ].
	
	SourceCodeFonts registerFonts: self.
	"Add all the embedded file infos"
	embeddedFileInfoCache valuesDo:[:eachSet | 
		eachSet do:[:each | fileInfos addFirst: each]].
	
	done := Set new. "visited directories are tracked in done, so that they are not processed twice"
	
	self platformImageRelativeDirectories 
		do:[:each | self updateFromDirectory: each done: done]
		displayingProgress: 'Loading image relative font files'.
		
	self platformVMRelativeDirectories 
		do:[:each | self updateFromDirectory: each done: done]
		displayingProgress: 'Loading vm relative font files'.
		
	self platformAbsoluteDirectories 
		do:[:each | self updateFromDirectory: each done: done ]
		displayingProgress: 'Loading platform font files'.