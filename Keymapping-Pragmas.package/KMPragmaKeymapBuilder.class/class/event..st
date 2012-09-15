private
event: anEvent
	anEvent methodAffected ifNil: [ ^self ].
	((anEvent methodAffected pragmas collect: #keyword) includesAnyOf: self pragmas )
		ifTrue: [ self uniqueInstance reset ]