addIconStyle: aNode from: start to: stop color: aColor
	|conf|
	(self shouldStyleNode: aNode) ifFalse: [ ^self ].
	conf := RubConfigurationChange new.
	conf configurationBlock: [ :text| |r| 
		r := RubTextSegmentMorph from: start to: stop + 1.
		text addSegment: r.
		
		r label: self iconLabel.
		r icon: self icon.
		r iconBlock: (self iconBlock: aNode).
		r color: aColor.
		r borderColor: self borderColor.
	].

	textModel announce: conf