events
	| events |
	events := self materializedData.
	events do: [ :each | self addInfoFor: each ].
	^ events