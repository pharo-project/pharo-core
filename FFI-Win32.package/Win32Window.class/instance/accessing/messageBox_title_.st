messageBox: aString title: aTitle
	"Win32Window getFocus messageBox:'Hello World' title:'News from Squeak:'"
	^self messageBox: aString title: aTitle flags: 0