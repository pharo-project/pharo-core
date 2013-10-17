resolvePackageSpec: packageSpec gofer: gofer

	|  references resolvedReference mcVersion loadedVersionInfos |
	references := self retryingResolvePackageSpecReferences: packageSpec gofer: gofer.
	resolvedReference := references last asMetacelloCachingResolvedReference.
	mcVersion := resolvedReference version.
	(loadedVersionInfos := self ancestorsFor: packageSpec) ~~ nil
		ifTrue: [ 
			loadedVersionInfos do: [:info | info name = mcVersion info name 
				ifTrue: [ 
					"package already loaded, don't load again"
					^nil ]]].
	^resolvedReference