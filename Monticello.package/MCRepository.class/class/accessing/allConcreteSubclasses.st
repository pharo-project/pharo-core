allConcreteSubclasses
	^ self withAllSubclasses reject: [:ea | ea isAbstract]