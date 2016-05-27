defaultBaseLocator

	^ defaultBaseLocator ifNil: [ 
		defaultBaseLocator := FileLocator workingDirectory / 'ombu-sessions' ]