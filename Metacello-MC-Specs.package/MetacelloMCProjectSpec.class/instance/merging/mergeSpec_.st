mergeSpec: anotherSpec

	| newSpec anotherProjectPackage map |
	newSpec := super mergeSpec: anotherSpec.
	map := anotherSpec mergeMap.
	(anotherProjectPackage := map at: #projectPackage) ~~ nil
		ifTrue: [ 
			newSpec projectPackage: 
				(newSpec projectPackage == nil
					ifTrue: [ anotherProjectPackage ]
					ifFalse: [ newSpec projectPackage mergeSpec: anotherProjectPackage ])].
	^newSpec