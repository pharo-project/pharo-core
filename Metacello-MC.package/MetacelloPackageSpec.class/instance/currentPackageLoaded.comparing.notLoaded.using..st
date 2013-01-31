testing
currentPackageLoaded: loadedBlock comparing: comarisonOperator notLoaded: notLoadedBlock using: anMCLoader
	"Use currentVersionInfoFor: because it involves the loader and returns versionInfo for a planned load 
	 (atomic loaders) or currently loaded package"

	| wcName vis |
	vis := anMCLoader ancestorsFor: self.
	vis notNil
		ifTrue: [ 
			| fileRef wcRef |
			self getFile == nil
				ifTrue: [ ^ loadedBlock value: false ].
			vis
				do: [ :vi | 
					wcName := vi name.
					fileRef := GoferResolvedReference name: self file.
					wcRef := GoferResolvedReference name: wcName.
					(wcRef compare: fileRef using: comarisonOperator)
						ifTrue: [ ^ loadedBlock value: true ] ].
			^ loadedBlock value: false ].
	^ notLoadedBlock value: true