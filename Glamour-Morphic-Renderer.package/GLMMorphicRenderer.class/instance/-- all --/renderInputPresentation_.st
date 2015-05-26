renderInputPresentation: aPresentation 
	
	| morph |
	self flag: 'hook the cuis editor'.
	morph := GLMMorphic containerMorph.
	^ morph