= anExample
	^ self class = anExample class 
		and: [ self pragma = anExample pragma 
			and: [ self method = anExample method
				and: [ self method selector = anExample method selector
					and: [ self method methodClass = anExample method methodClass ] ] ] ]