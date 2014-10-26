addCustomMenuItems: aMenu hand: aHandMorph
	"Add custom menu items to the menu"

	super addCustomMenuItems: aMenu hand: aHandMorph.
	aMenu addLine.
	aMenu add: 'add or remove items' target: self selector: #addOrRemoveItems: argument: aHandMorph.
	aMenu addList: {
		#-.
		{'Place into a row' translated. #organizeIntoRow}.
		{'Place into a column' translated. #organizeIntoColumn}.
		#-.
		{'Align left edges' translated. #alignLeftEdges}.
		{'Align top edges' translated. #alignTopEdges}.
		{'Align right edges' translated. #alignRightEdges}.
		{'Align bottom edges' translated. #alignBottomEdges}.
		#-.
		{'Align centers vertically' translated. #alignCentersVertically}.
		{'Align centers horizontally' translated. #alignCentersHorizontally}.
		}.

	self selectedItems size > 2
		ifTrue:[
			aMenu addList: {
				#-.
				{'Distribute vertically' translated. #distributeVertically}.
				{'Distribute horizontally' translated. #distributeHorizontally}.
				}.
		].
