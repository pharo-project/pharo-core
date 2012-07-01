query
allSelectorsWithAnyImplementorsIn: selectorList 
	"Answer the subset of the given list which represent method selectors 
	which have at least one implementor in the system."
	| good |
	good := OrderedCollection new.
	self allBehaviorsDo: [:class | 
			selectorList do: [:aSelector | (class includesSelector: aSelector) ifTrue: [good add: aSelector]]].
	^ good asSet asArray sort