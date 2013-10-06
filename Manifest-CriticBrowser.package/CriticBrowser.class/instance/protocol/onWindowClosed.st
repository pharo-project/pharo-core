onWindowClosed

	cache cacheChange 
		ifTrue: [	
			(MorphicUIManager new confirm: 'Do you want log all false positive in the Manifests
before closing the Critics Browser ?')
				ifTrue: [ cache logInManifest ]].
	
