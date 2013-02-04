group
addMatchingPackagesInGroups

	self selectedPackage
		ifNotNil: [:package || separatorIndex firstPartOfTheName packages |
			separatorIndex := package name indexOf: $- ifAbsent: [ package name size + 1].
			firstPartOfTheName := package name copyFrom: 1 to: (separatorIndex - 1) .
			packages := self model packages select: [:each | each name beginsWith: firstPartOfTheName ].
			[ ^ self addPackagesAsGroups: packages ]
			on: GroupsAlreadyExists
			do: [:ex | 
				self alertGroupExisting: ex groupName.
				^ nil ]].
	^ nil