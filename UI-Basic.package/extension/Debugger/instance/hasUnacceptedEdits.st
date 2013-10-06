hasUnacceptedEdits 

	^ (self dependents select:[ :e | e respondsTo: #hasUnacceptedEdits ])
			anySatisfy: [:e | e hasUnacceptedEdits ]