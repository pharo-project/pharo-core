preferencesGeneralFolder

	^ [ FileLocator preferences asFileReference / 'pharo' ]
	on: Error do: [ 
		"Non NB-VMs will fai with a generic error"		
		nil  ].