protected: aBlock
	^ monitor critical: [ aBlock value ]