private
privateImplementorsOf: aSelector 
	| classes |
	classes := Set new.
	self allClassesDo: [ :class |
		(class directlyDefinesMethod: aSelector)
			ifTrue: [ classes add: class ] ].
	^ classes