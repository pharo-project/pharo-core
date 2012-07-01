as yet unclassified
methodSourceDescription: aClass method: aCompiledMethod 
	| styler |
	styler := SHTextStylerST80 new.
	styler classOrMetaClass: aClass.
	^ NECEntryDescription
		label: self label
		title: aClass printString
		description: (styler styledTextFor: (aCompiledMethod sourceCode) asText)