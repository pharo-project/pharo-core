testPrimitivePrepareDeliveryData
	| maybeDeliveredData  postponedData bytes announcement events |
	self assert: recorder postponedData isNil.
	maybeDeliveredData := OrderedCollection new.
	maybeDeliveredData 
		add: GTSpotterRecorderOpenEvent new;
		add: GTSpotterRecorderShowPreviewEvent new;
		add: GTSpotterRecorderExitAnnouncementEvent new;
		add: GTSpotterRecorderOpenEvent new;
		add: GTSpotterRecorderShowPreviewEvent new;
		add: GTSpotterRecorderExitAnnouncementEvent new;
		add: GTSpotterRecorderOpenEvent new;
		add: GTSpotterRecorderShowPreviewEvent new.
	maybeDeliveredData do: [ :each | recorder recordedData nextPut: each ].
	recorder primitivePrepareDeliveryData.
	postponedData := recorder postponedData.
	self assert: postponedData size equals: 2.
	7 to: 8 do: [ :index |
		self assert: (maybeDeliveredData at: index) == (postponedData at: index - 6) ].
	"second delivery"
	recorder recordedData nextPut: GTSpotterRecorderExitAnnouncementEvent new.
	recorder primitivePrepareDeliveryData.
	postponedData := recorder postponedData.
	self assert: postponedData isNil.
	self assert: recorder deliveryQueue size equals: 2.
	"first delivered data"
	bytes := recorder deliveryQueue nextOrNil.
	self assert: bytes notNil.
	announcement := recorder materialize: bytes.
	events := announcement materializedData.
	self assert: events size equals: 6.
	events withIndexDo: [ :eachEvent :index |
		self assert: (maybeDeliveredData at: index) class = eachEvent class ].
	"second delivered data"
	bytes := recorder deliveryQueue nextOrNil.
	self assert: bytes notNil.
	announcement := recorder materialize: bytes.
	events := announcement materializedData.
	self assert: events size equals: 3.
	self assert: (maybeDeliveredData at: 7) class = events first class.
	self assert: (maybeDeliveredData at: 8) class = events second class.
	self assert: events third class = GTSpotterRecorderExitAnnouncementEvent.