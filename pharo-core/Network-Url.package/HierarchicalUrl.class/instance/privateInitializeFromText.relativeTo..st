parsing
privateInitializeFromText: aString relativeTo: aUrl 
	| remainder ind basePath |
	remainder := aString.
	"set the scheme"
	schemeName := aUrl schemeName.

	"a leading // means the authority is specified, meaning it is absolute"
	(remainder beginsWith: '//')
		ifTrue: [^ self privateInitializeFromText: aString].

	"otherwise, use the same authority"
	authority := aUrl authority.
	port := aUrl port.
	username := aUrl username.
	password := aUrl password.

	"get the query"
	ind := remainder indexOf: $?.
	ind > 0
		ifTrue: [query := remainder copyFrom: ind + 1 to: remainder size.
			remainder := remainder copyFrom: 1 to: ind - 1].

	"get the path"
	(remainder beginsWith: '/')
		ifTrue: [ basePath := #() ]
		ifFalse: [ basePath := aUrl path ].
	path := self privateParsePath: remainder  relativeTo: basePath.

