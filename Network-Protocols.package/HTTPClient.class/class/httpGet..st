post/get
httpGet: url
	| document |
	document := self httpGetDocument: url.
	^(document isString)
		ifTrue: [
			"strings indicate errors"
			document]
		ifFalse: [(RWBinaryOrTextStream with: document content) reset]