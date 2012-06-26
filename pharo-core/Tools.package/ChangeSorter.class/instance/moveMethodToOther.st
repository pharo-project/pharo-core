message list
moveMethodToOther
	"Place this change in the other changeSet and remove it from this side"

	| other cls sel |
	self checkThatSidesDiffer: [^self].
	self okToChange ifFalse: [^Beeper beep].
	currentSelector ifNotNil: 
			[other := (parent other: self) changeSet.
			other == myChangeSet ifTrue: [^Beeper  beep].
			cls := self selectedClassOrMetaClass.
			sel := currentSelector asSymbol.
			other 
				absorbMethod: sel
				class: cls
				from: myChangeSet.
			(parent other: self) showChangeSet: other.
			self forget	"removes the method from this side"]