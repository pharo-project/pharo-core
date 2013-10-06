environment
	^ environment ifNil: [ environment := NixEnvironment new ]