addMetalinkStyle: aNode from: start to: stop color: aColor
	|conf|
	aNode hasMetalink ifFalse: [ ^self ].
	conf := RubConfigurationChange new.
	conf configurationBlock: [ :text| |r| 
		r := MetalinkTextSegmentMorph  from: start to: stop + 1.
		text addSegment: r.
		
		r label: 'MetaLink'.
		r icon: self iconProvider arrowUpIcon.
		r iconBlock: [ :seg :event | aNode explore].
		r color: aColor.
		r borderColor: Color gray.
	].

	textModel announce: conf