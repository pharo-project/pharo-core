initializeSlots: anObject 
	self layout allSlots do: [ :slot | slot initialize: anObject ]