private
criticsModelContains: aCritic

	^ criticsModel listItems anySatisfy: [:each |
		aCritic isCompiledMethod
			ifTrue: [
				 each isCompiledMethod 
					ifTrue: [ each methodClass = aCritic methodClass and: [ each selector = aCritic selector ]]
					ifFalse: [false]
				 ]
			ifFalse: [each = aCritic ] ]