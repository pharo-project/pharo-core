as yet unclassified
releaseVersion: aVersion url: urlString
	| result |
	result := HTTPSocket
		httpPost: self squeakMapUrl, '/packagebyname/', packageName, '/newrelease'
		args: {'version' -> {(aVersion info name copyAfter: $.) extractNumber asString}.
			   'note' -> {aVersion info message}.
			   'downloadURL' -> {urlString}}
		user: user
		passwd: password.
	result contents size > 4 ifTrue: [self error: result contents]
