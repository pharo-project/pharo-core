newBindingsListIn: aPopup

	^ GLMFallbackScrollListBrick new
			emptyBrick: (self newEmptyTextIn: aPopup);
			model: (self newListModelIn: aPopup);
			height: [ :b | b band height ];
			maxHeight: 300;
			width: 300