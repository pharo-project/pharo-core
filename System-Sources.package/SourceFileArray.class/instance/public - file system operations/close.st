close
		
	| oldFiles "oldQueue" | 
	
	oldFiles := files.
	files := Array new: 2.
	"oldQueue := readOnlyQueue.
	readOnlyQueue := SharedQueue new."

	self closeFileArray: oldFiles.

	"oldQueue flushAllSuchThat: [ :each | self closeFileArray: each. true]"