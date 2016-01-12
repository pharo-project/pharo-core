variableValuePairsFor: anObject

	^ (anObject class instVarNames 
			collectWithIndex: [ :ivName :index | 
				ivName -> (thisContext object: anObject instVarAt: index) ]) 
					sort asOrderedCollection