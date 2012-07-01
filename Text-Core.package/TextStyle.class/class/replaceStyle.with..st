mime file in/out
replaceStyle: oldStyle with: newStyle 
	"
	TextStyle replaceStyle: (TextStyle named: #AccunyOLD) with: (TextStyle named: #Accuny)
	"
	"Try to find corresponding fonts in newStyle and substitute the fonts in oldStyle for them."
	| oldKeys |
	oldKeys := Set new.
	TextSharedInformation keysAndValuesDo: [ :k :v | v = oldStyle ifTrue: [ oldKeys add: k ] ].
	oldKeys removeAllFoundIn: self defaultFamilyNames.
	self 
		replaceFontsIn: oldStyle fontArray
		with: newStyle.
	oldStyle becomeForward: newStyle.
	oldKeys do: [ :k | TextSharedInformation removeKey: k ]