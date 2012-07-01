private
event: anEvent
	anEvent item ifNil: [ ^self ].
	((anEvent item pragmas collect: #keyword) includesAnyOf: self pragmas )
		ifTrue: [ self uniqueInstance reset ]