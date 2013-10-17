exportIcon: image asGifNamed: aString
	"self exportIcon: self newIcon asGifNamed: 'newIcon'"

	| writer |
	writer := GIFReadWriter on: (FileStream newFileNamed: aString, '.gif').
	[ writer nextPutImage: image]	
		ensure: [writer close]