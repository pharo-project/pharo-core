*NautilusCommon
isOverriden2
	
	| implementors subclasses methodClass |
	implementors := SystemNavigation default allImplementorsOf: self selector.
	implementors := implementors collect: [:each | each methodClass ].
	subclasses := self methodClass allSubclasses.
	methodClass := self methodClass.
	^ (subclasses size > implementors size)
		ifTrue: [ implementors anySatisfy: [:each | each inheritsFrom: methodClass]]
		ifFalse: [ subclasses includesAnyOf: implementors ]