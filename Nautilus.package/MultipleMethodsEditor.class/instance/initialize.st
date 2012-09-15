initialize
initialize
	"Initialization code for MultipleMethodsEditor"

	super initialize.
	self changeProportionalLayout.
	self color: Color white.
	lock := false.
	buttonsContainer := PanelMorph new
							changeTableLayout;
							listDirection: #rightToLeft;
							hResizing: #spaceFill;
							vResizing: #spaceFill;
							yourself.
							
	editors := OrderedCollection new.
	container := self newProportionalPanelMorph.
					
	self updateLayoutForSingle