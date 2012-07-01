initialization
addCloseBox
	"If I have a labelArea, add a close box to it"
	| frame |
	labelArea
		ifNil: [^ self].
	closeBox := self createCloseBox.
	frame := LayoutFrame new.
	frame leftFraction: 0;
		 leftOffset: 2;
		 topFraction: 0;
		 topOffset: 0.
	closeBox layoutFrame: frame.
	labelArea addMorphBack: closeBox