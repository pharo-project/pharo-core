instance creations
removeDescriptionNamed: descriptionName subfamilyName: subfamilyName

	| tts |
	Descriptions ifNil: [^ self].
	tts := Descriptions select: [:f | f name = descriptionName and: [f subfamilyName = subfamilyName]].
	tts do: [:f | Descriptions remove: f].
