sortPackageSpecs: orderedSpecs for: packageSpec

	| packageIndex moved movePackage targetPackage targetIndex targetPackages |
	packageIndex := orderedSpecs indexOf: packageSpec.
	moved := movePackage := false.
	targetPackages := packageSpec requires.
	targetPackages do: [:targetPackageName |
		targetPackage := orderedSpecs 
			detect: [:each | each name = targetPackageName ] 
			ifNone: [].
		targetIndex := orderedSpecs indexOf: targetPackage.
		movePackage := movePackage or: [ packageIndex <= targetIndex ]].
	movePackage 
		ifTrue: [
			moved := true.
			orderedSpecs remove: packageSpec ifAbsent: [ ^self error: 'unexpected error removing package' ].
			targetIndex := 0.
			targetPackages do: [:targetPackageName | 
				(targetPackage := orderedSpecs detect: [:each | 
					each name = targetPackageName ] ifNone: []) ~~ nil
						ifTrue: [ targetIndex := targetIndex max: (orderedSpecs indexOf: targetPackage) ]].
			targetIndex == 0
				ifTrue: [ orderedSpecs add: packageSpec beforeIndex: packageIndex ]
				ifFalse: [ orderedSpecs add: packageSpec afterIndex: targetIndex ]].
	^moved