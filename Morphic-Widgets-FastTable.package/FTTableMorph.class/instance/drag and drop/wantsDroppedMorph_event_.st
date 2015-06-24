wantsDroppedMorph: aMorph event: event
	^ self dataSource 
		wantsDropElements: aMorph passenger
		type: aMorph dragTransferType
		index: ((self container rowIndexContainingPoint: event position) ifNil: [ 0 ])