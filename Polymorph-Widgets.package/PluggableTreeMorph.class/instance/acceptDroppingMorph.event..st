morphic
acceptDroppingMorph: aMorph event: evt
	| item dropTarget |
	dropItemSelector ifNil:[^self].
	item := aMorph passenger.
	dropTarget := (self itemFromPoint: evt position) withoutListWrapper.
	model perform: dropItemSelector with: item with: dropTarget.
	evt hand releaseMouseFocus: self.
	Cursor normal show.
