exportIcon: image asPNGNamed: aString
	"self exportIcon: self newIcon asPNGNamed: 'newIcon'"

	| writer |
	writer := PNGReadWriter on: (FileStream newFileNamed: aString, '.png').
	[ writer nextPutImage: image]	
		ensure: [writer close]