privSaveImageWithCleanup

	" Do not use this method for common image saving. This method is designated for saving the image during the shrinking process in headless images."

	(Delay forMilliseconds: 1000) wait.

	Processor yield.

	13 "a magic number (Camillo) "timesRepeat: [ Smalltalk garbageCollect ].
 
	[
		self snapshot: true andQuit: true.
	] ifError: [:e |
		| rep |
		rep := FileStream forceNewFileNamed: 'PharoDebug.log'.
		rep nextPutAll: 'PharoKernel shrinking report'; cr.
		rep nextPutAll: 'Error:'; cr.
		rep nextPutAll: e asString; cr.
  		rep nextPutAll: thisContext stack size asString.
 	  	thisContext stack copy withIndexDo: [:stck :i |
			[ rep nextPutAll: i asString; space; nextPutAll: stck asString; cr] ifError: []].
		rep close. 
		Smalltalk exitFailure ]