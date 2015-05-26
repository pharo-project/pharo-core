nilMsgsFilter 
	^ SelectorFilter forSelectors: (OrderedCollection with: #isNil with: #ifNotNil: with: #ifNil)