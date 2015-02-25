extractMetadata

	^ {
		#author -> Author fullName.
		#date -> DateAndTime now.
		#version -> self extractVersion.
		#auto -> SlReporter autoSubmit
	} asDictionary