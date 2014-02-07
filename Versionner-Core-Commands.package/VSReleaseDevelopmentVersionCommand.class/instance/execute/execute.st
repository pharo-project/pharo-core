execute
	| message workflow newDevVersion |
	"message := self uiManager multilineRequest: 'Enter commit message' initialAnswer: ''.
	message == nil
		ifTrue: [ ^ self ]."
		
	workflow := target.
	[ workflow developmentVersion ]
		on: MetacelloVersionDoesNotExistError
		do: [ UIManager default inform: 'Cannot find a development version for this project!'.
			^ self ].
	newDevVersion := UIManager default
		request: 'Version number for the next development version'
		initialAnswer: workflow nextDevelopmentVersionString
		title: 'Next version'.
	newDevVersion
		ifNotNil: [ 
			workflow
				releaseDevelopment: (self standardizeDevVersionString: newDevVersion) ]