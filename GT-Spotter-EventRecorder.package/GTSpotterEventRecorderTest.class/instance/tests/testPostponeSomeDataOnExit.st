testPostponeSomeDataOnExit
	| maybeDeliveredData toBeDeliveredData postponedData |
	self assert: recorder postponedData isNil.
	maybeDeliveredData := recorder newCollectionWithPostponedData.
	self assert: maybeDeliveredData size equals: 0.
	maybeDeliveredData 
		add: GTSpotterRecorderOpenEvent new;
		add: GTSpotterRecorderShowPreviewEvent new;
		add: GTSpotterRecorderExitAnnouncementEvent new;
		add: GTSpotterRecorderOpenEvent new;
		add: GTSpotterRecorderShowPreviewEvent new;
		add: GTSpotterRecorderExitAnnouncementEvent new;
		add: GTSpotterRecorderOpenEvent new;
		add: GTSpotterRecorderShowPreviewEvent new.
	toBeDeliveredData := recorder postponeSomeData: maybeDeliveredData.
	postponedData := recorder postponedData.
	self assert: toBeDeliveredData size equals: 6.
	self assert: postponedData size equals: 2.
	1 to: 6 do: [ :index |
		self assert: (maybeDeliveredData at: index) == (toBeDeliveredData at: index) ].
	7 to: 8 do: [ :index |
		self assert: (maybeDeliveredData at: index) == (postponedData at: index - 6) ].
	"second delivery"
	maybeDeliveredData := recorder newCollectionWithPostponedData.
	self assert: recorder postponedData isNil.
	self assert: maybeDeliveredData size equals: 2.
	1 to: 2 do: [ :index |
		self assert: (maybeDeliveredData at: index) == (postponedData at: index) ].
	self assert: recorder postponedData isNil.
	maybeDeliveredData
		add: GTSpotterRecorderExitAnnouncementEvent new.
	toBeDeliveredData := recorder postponeSomeData: maybeDeliveredData.
	postponedData := recorder postponedData.
	self assert: toBeDeliveredData size equals: 3.
	self assert: postponedData isNil.
	1 to: 3 do: [ :index |
		self assert: (maybeDeliveredData at: index) == (toBeDeliveredData at: index) ].
