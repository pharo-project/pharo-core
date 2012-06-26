examples
example2
	"LimitingLineStreamWrapper example2"
	"Demo nesting wrappers - get header lines from some messages"
	| inStream msgStream headers headerStream |
	inStream := self exampleStream.
	msgStream := LimitingLineStreamWrapper on: inStream delimiter: 'From '.
	headers := OrderedCollection new.
	[inStream atEnd] whileFalse: [
		msgStream skipThisLine. "Skip From"
		headerStream := LimitingLineStreamWrapper on: msgStream delimiter: ''.
		headers add: headerStream linesUpToEnd.
		[msgStream nextLine isNil] whileFalse. "Skip Body"
	].
	^headers
			