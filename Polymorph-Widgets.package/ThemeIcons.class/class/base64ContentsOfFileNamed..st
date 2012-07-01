private - utilities
base64ContentsOfFileNamed: aString 
	"Private - convenient method"
	
	| file base64Contents |
	file := FileStream readOnlyFileNamed: aString.
	base64Contents := (Base64MimeConverter mimeEncode: file binary) contents.
	file close.
	^ base64Contents