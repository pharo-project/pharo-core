private
newLabelMorph
	"Answer a new label morph"
	^	(LabelMorph contents: self label)
			on: #click send: #toggleSelected to: self; yourself