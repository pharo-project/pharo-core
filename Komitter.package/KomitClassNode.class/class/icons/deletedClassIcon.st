deletedClassIcon

	^ deletedClassIcon ifNil: [ 
		deletedClassIcon := (self defaultClassIcon asFormOfDepth: 32)
			mergeBottomRightWith: (Smalltalk ui icons overlayRemove) ].