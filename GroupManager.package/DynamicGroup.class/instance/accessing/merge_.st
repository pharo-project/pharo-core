merge: aGroup

	| instance |
	instance :=  self class
					named: (self name, ' + ', aGroup name)
					blocks: (self blocks union: aGroup blocks).
	( self isReadOnly or: [ aGroup isReadOnly ]) ifTrue: [ instance beReadOnly ].
	instance removable: ( self removable or: [ aGroup removable ]).
	^ instance