buildSelfContainedCallsFrom: aCollection in: aClass
	| result oldList |
	
	oldList := #().
	result := OrderedCollection new.
	aCollection do: [:sel || allCalls |
		allCalls := self allCallsOn: sel.
		(( allCalls  size = 1) and: [ (allCalls first actualClass == aClass and: [ allCalls first selector == sel ])])
			ifTrue: [ result add: sel ]].
		
	[ 	oldList := result asArray.
		aCollection do: [:sel || allCalls |
			allCalls := self allCallsOn: sel.
			( allCalls allSatisfy: [:other | 
				result anySatisfy: [:other2 | other actualClass == aClass and: [ other selector = other2 selector ]]])
					ifTrue: [ result add: sel ]]]
	doWhileFalse: [ oldList size = result size ].
		
			
		
	^ result