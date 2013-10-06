linearLoadPackageSpec: packageSpec gofer: gofer

	MetacelloPlatform current
		do:  [ | references nearestReference cachedReference externalReference mcVersion loadedVersionInfos |
			"check to see if mcz file is already in cacheRepository"
			self flag: #cleanup. "validate the comment"
			"packageSpec name = 'OmniBrowser' ifTrue: [self halt: packageSpec file ]."
			cachedReference := self resolvePackageSpec: packageSpec cachedGofer: self loaderPolicy cacheGofer.
			(cachedReference ~~ nil and: [ packageSpec getFile ~~ nil ])
				ifTrue: [	 cachedReference name = packageSpec file ifTrue: [ ^self ]].
			"look up mcz file"
			references := self retryingResolvePackageSpecReferences: packageSpec gofer: gofer.
			nearestReference := references last asMetacelloCachingResolvedReference.
			"If the mcz is already in the cacheRepository, no need to copy"
			(cachedReference ~~ nil and: [ cachedReference name = nearestReference name ])
				ifTrue: [ ^self ].
			"If the mcz is already loaded into the image, no need to copy"
			(self ignoreImage not 
				and: [ (loadedVersionInfos := self ancestorsFor: packageSpec) ~~ nil ])
					ifTrue: [ loadedVersionInfos do: [:info | info name = nearestReference name ifTrue: [ ^self ]]].
			externalReference := (references select: [:ref | ref name = nearestReference name]) first asMetacelloCachingResolvedReference.
			self repositoryMap at: externalReference name put: externalReference repository.
			(self resolveDependencies: externalReference nearest: nearestReference into: (OrderedCollection with: nearestReference)) do: [:reference | | pSpec l |
				mcVersion := reference version.
				(l := (GoferVersionReference name: reference name) resolveAllWith: self loaderPolicy cacheGofer) isEmpty 
					ifTrue:  [ 
						self cacheRepository storeVersion: mcVersion.
				reference == nearestReference
					ifTrue: [ pSpec := packageSpec ]
					ifFalse: [ 
						pSpec :=  packageSpec project packageSpec.
						pSpec name: mcVersion info ].
				self loadData 
					addVersion: mcVersion 
					versionInfo: mcVersion info 
					resolvedReference: reference 
					packageSpec: pSpec ]].
			self loaderPolicy resetCacheGofer.
			self preLoad: packageSpec.
			(MetacelloDirective loadPackage: packageSpec externalReference: externalReference loader: self) addTo: self loadDirective.
			self postLoad: packageSpec.
			Transcript cr; show: 'Fetched -> ', externalReference name, ' --- ', externalReference repository description, ' --- ', nearestReference repository description ]
		displaying: 'Fetching ', packageSpec file