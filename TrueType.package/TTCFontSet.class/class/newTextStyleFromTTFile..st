as yet unclassified
newTextStyleFromTTFile: fileName
"
	TTCFontReader encodingTag: JapaneseEnvironment leadingChar.
	self newTextStyleFromTTFile: 'C:\WINDOWS\Fonts\msmincho.TTC'

	TTCFontReader encodingTag: 0.
	self newTextStyleFromTTFile: 'C:\WINDOWS\Fonts\symbol.ttf'
"

	| description |
	description := TTCFontDescription addFromTTFile: fileName.
	^ self newTextStyleFromTT: description.
