applyIncludesTo: orderedSpecs for: pkgSpec firstTime: firstTime
	| movedSpecs baseIndex includedSpec result |
	movedSpecs := Set new.
	baseIndex := orderedSpecs indexOf: pkgSpec.
	pkgSpec includesForPackageOrdering
		do: [:includedSpecName | 
			includedSpec := orderedSpecs
						detect: [:spec | spec name = includedSpecName ]
						ifNone: [].
			(self slideIn: orderedSpecs spec: includedSpec baseIndex: baseIndex seen: IdentitySet new firstTime: firstTime)
				ifTrue: [ movedSpecs add: includedSpec name ]].
	^ movedSpecs