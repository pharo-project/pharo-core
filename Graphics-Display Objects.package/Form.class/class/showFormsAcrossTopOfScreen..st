utils
showFormsAcrossTopOfScreen: aFormList
	"Display the given array of forms across the top of the screen, wrapping to subsequent lines if needed. Useful for example for looking at sets of rotations and animations."
	"self showFormsAcrossTopOfScreen: {Cursor currentCursor asCursorForm}"
	
	| position maxHeight screenBox ceiling |

	position := 20.
	maxHeight := 0.
	ceiling := 0.
	screenBox := Display boundingBox.
	aFormList do:
		[:elem | elem displayAt: (position @ ceiling).
			maxHeight := maxHeight max: elem boundingBox height.
			position := position + elem boundingBox width + 5.
			position > (screenBox right - 100) ifTrue:
				[position := 20.
				ceiling := ceiling + maxHeight + 10.
				maxHeight := 0]]