utils
showFormsDictAcrossTopOfScreen: formDict
	"Display the given Dictionary of forms across the top of the screen, wrapping to subsequent lines if needed.  Beneath each, put the name of the associated key."

	"
	| dict methods |
	dict := Dictionary new. 
	methods := MenuIcons class selectors select: [:each | '*Icon' match: each asString].
	methods do: [:each | dict at: each put: (MenuIcons perform: each)].
	self showFormsDictAcrossTopOfScreen: dict"

	| screenBox position maxHeight ceiling |

	position := 20.
	maxHeight := 0.
	ceiling := 0.
	screenBox := Display boundingBox.
	formDict associationsDo:
		[:assoc | | h elem box labelWidth keyString | (elem := assoc value) displayAt: (position @ ceiling).
			box := elem boundingBox.
			h := box height.
			keyString := (assoc key isString) ifTrue: [assoc key] ifFalse: [assoc key printString].
			keyString displayAt: (position @ (ceiling + h)).
			labelWidth := TextStyle default defaultFont widthOfString: keyString.
			maxHeight := maxHeight max: h.
			position := position + (box width max: labelWidth) + 5.
			position > (screenBox right - 100) ifTrue:
				[position := 20.
				ceiling := ceiling + maxHeight + 15.
				maxHeight := 0]]