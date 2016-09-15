triggerMarkWidgets

	^ self triggerItems flatCollect: [ :item |
		{ EpMorphFactory default semiTransparent: item icon.
		(EpMorphFactory default secondaryStringFor: '»') } ]