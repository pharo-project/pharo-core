closeIfNotOver: aMorph
	| mw |
	(chooser notNil and: [(mw := aMorph world) notNil])
		ifTrue: [ | subs |
			subs := mw submorphs.
			(subs indexOf: chooser) > (subs indexOf: aMorph window)
				ifTrue: [self closeChooser]]
