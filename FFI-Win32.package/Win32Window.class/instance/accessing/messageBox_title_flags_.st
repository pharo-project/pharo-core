messageBox: aString title: aTitle flags: flags
	"Win32Window getFocus messageBox:'Are you ready???' title:'News from Squeak:' flags: 3"
	^self apiMessageBox: self text: aString title: aTitle flags: flags