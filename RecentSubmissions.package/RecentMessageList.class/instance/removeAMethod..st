private
removeAMethod: aRemovedEvent
	
	| method list |
	method := aRemovedEvent methodRemoved.
	list := (self methodReferenceList select: [:each |  
						each className = method methodClass name
							and:[ each name = method selector ]]).

	list do: [:each | 
			each fullName: (each className, '>>', each selector, ' (removed)') ].
	self updateView.