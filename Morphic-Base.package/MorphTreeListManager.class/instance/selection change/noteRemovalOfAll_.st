noteRemovalOfAll: aMorphList
	aMorphList
		do: [ :each | 
			self selectedMorphList remove: each ifAbsent: [  ].
			lastClickedMorph == each
				ifTrue: [ lastClickedMorph := nil ] ]