compatibility
contentType: aMIMEType  content: content
	"create a MIMEDocument with the given content-type and content"
	"MIMEDocument contentType: 'text/plain' content: 'This is a test'"
	
	| ans idx |
	ans := self new.
	ans privateContent: content.

	"parse the content-type"
	(aMIMEType isNil or: [
		idx := aMIMEType asString  indexOf: $/.
		idx = 0]) 
	ifTrue: [ 
		ans type: (MIMEType main: 'application' sub: 'octet-stream')]
	ifFalse: [ 
		ans type: (MIMEType main: (aMIMEType asString copyFrom: 1 to: idx-1) sub:
(aMIMEType asString copyFrom: idx+1 to: aMIMEType asString size))].

	^ans