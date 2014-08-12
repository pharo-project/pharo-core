testLegacy
	| oldMIMEType |
	(Smalltalk globals includesKey: #MIMEType) 
		ifFalse: [ ^ self skip ].
	oldMIMEType := [ MIMEType defaultText ]
		on: Deprecation
		do: [ :notification | notification resume ].
	self assert: (oldMIMEType asZnMimeType matches: ZnMimeType textPlain)