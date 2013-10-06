privateInitializeFromText: aString 
	| remainder ind specifiedSchemeName |
	remainder := aString.
	schemeName ifNil: 
			[specifiedSchemeName := Url schemeNameForString: remainder.
			specifiedSchemeName ifNotNil: 
					[schemeName := specifiedSchemeName.
					remainder := remainder copyFrom: schemeName size + 2 to: remainder size].
			schemeName ifNil: 
					["assume HTTP"
					schemeName := 'http']].

	"remove leading // if it's there"
	(remainder beginsWith: '//') 
		ifTrue: [remainder := remainder copyFrom: 3 to: remainder size].

	"get the query"
	ind := remainder indexOf: $?.
	ind > 0 
		ifTrue: 
			[query := remainder copyFrom: ind + 1 to: remainder size.
			remainder := remainder copyFrom: 1 to: ind - 1].

	"get the authority"
	ind := remainder indexOf: $/.
	ind > 0 
		ifTrue: 
			[ind = 1 
				ifTrue: [authority := '']
				ifFalse: 
					[authority := remainder copyFrom: 1 to: ind - 1.
					remainder := remainder copyFrom: ind + 1 to: remainder size]]
		ifFalse: 
			[authority := remainder.
			remainder := ''].

	"extract the username+password"
	(authority includes: $@) 
		ifTrue: 
			[username := authority copyUpTo: $@.
			authority := authority copyFrom: (authority indexOf: $@) + 1
						to: authority size.
			(username includes: $:) 
				ifTrue: 
					[password := (username copyFrom: (username indexOf: $:) + 1 to: username size) unescapePercents.
					username := (username copyUpTo: $:) unescapePercents]].

	"Extract the port"
	(authority includes: $:) 
		ifTrue: 
			[| lastColonIndex portString |
			lastColonIndex := authority findLast: [:c | c = $:].
			portString := authority copyFrom: lastColonIndex + 1 to: authority size.
			portString isAllDigits 
				ifTrue: 
					[port := Integer readFromString: portString.
					(port > 65535) ifTrue: [self error: 'Invalid port number'].
					 authority := authority copyFrom: 1 to: lastColonIndex - 1]
				ifFalse:[self error: 'Invalid port number']].

	"get the path"
	path := self privateParsePath: remainder relativeTo: #() .