as yet unclassified
computeLoadedAndInheritedFromManager: each
	each ancestors
		do: [ :ancestor | 
			loaded add: ancestor name.
			ancestor
				ancestorsDoWhileTrue: [ :heir | 
					(inherited includes: heir name)
						ifTrue: [ false ]
						ifFalse: [ 
							inherited add: heir name.
							true ] ] ]