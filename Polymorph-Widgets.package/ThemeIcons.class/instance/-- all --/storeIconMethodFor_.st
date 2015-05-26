storeIconMethodFor: each
	| base64 selector source |
	
	base64 := self base64ContentsOfFileNamed: each fullName.
	selector := (each asFileReference base, 'IconContents') asSymbol.
	source := '{1}
	"Private - Method generated"
	^ ''{2}''' format: {selector. base64}.
	
	self class 
		compile: source 
		classified: 'private - contents'