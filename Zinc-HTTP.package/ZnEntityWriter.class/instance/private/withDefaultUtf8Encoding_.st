withDefaultUtf8Encoding: block
	"Run block with the default character encoder set to UTF-8
	unless it was already set at a higher level, in which case we do nothing"
	
	^ ZnDefaultCharacterEncoder 
		value: (ZnDefaultCharacterEncoder value ifNil: [ ZnUTF8Encoder new ]) 
		during: block