noteRemovalOfAll: aMorphList
	aMorphList
		do: [ :each | 
			(self selectedMorphList includes: each)
				ifTrue: [ 
					each selected: false.
					each unhighlight.
					self selectedMorphList remove: each ifAbsent: [  ] ].
			lastClickedMorph == each
				ifTrue: [ lastClickedMorph := nil ] ]