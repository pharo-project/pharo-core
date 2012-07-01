message list
copyMethodToOther
	"Place this change in the other changeSet also"
	| other cls sel |
	self checkThatSidesDiffer: [^ self].
	currentSelector ifNotNil:
		[other := (parent other: self) changeSet.
		cls := self selectedClassOrMetaClass.
		sel := currentSelector asSymbol.

		other absorbMethod: sel class: cls from: myChangeSet.
		(parent other: self) showChangeSet: other]
