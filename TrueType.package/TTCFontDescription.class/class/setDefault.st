as yet unclassified
setDefault
"
	self setDefault
"

	TTCDefault := TTCFontReader readFrom: (FileStream readOnlyFileNamed: 'C:\WINDOWS\Fonts\msgothic.ttc').
	self clearDescriptions.

