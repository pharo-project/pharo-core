unreferencedKeys
	"| uk | (Time millisecondsToRun: [uk := TextConstants unreferencedKeys]) -> uk"

	^'Scanning for references . . .' 
		displayProgressFrom: 0
		to: Smalltalk globals classNames size * 2
		during: 
			[:bar | | currentClass n associations referencedAssociations |
			currentClass := nil.
			n := 0.
			associations := self associations asIdentitySet.
			referencedAssociations := IdentitySet new: associations size.
			self systemNavigation allSelect:
				[:m|
				m methodClass ~~ currentClass ifTrue:
					[currentClass := m methodClass.
					 bar current: (n := n + 1)].
				m literalsDo:
					[:l|
					(l isVariableBinding and: [associations includes: l]) ifTrue:
						[referencedAssociations add: l]].
				false].
			((associations reject: [:assoc | referencedAssociations includes: assoc]) collect: [:assoc| assoc key]) asSet]