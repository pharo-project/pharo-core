mime file in/out
replaceFontsIn: oldFontArray with: newStyle 
	"
	TextStyle replaceFontsIn: (TextStyle looseFontsFromFamily: #Accuny) with: (TextStyle named: #Accuny)
	"
	"Try to find corresponding fonts in newStyle and substitute them for the fonts in oldFontArray"
	newStyle fontArray do: [ :newFont | newFont releaseCachedState ].
	oldFontArray do: 
		[ :oldFont | 
		| newFont |
		oldFont reset.
		newFont := (newStyle fontOfPointSize: oldFont pointSize) emphasis: oldFont emphasis.
		oldFont becomeForward: newFont ].
	
	UIManager default onFontsChanged