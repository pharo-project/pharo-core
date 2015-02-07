initializeSlots: anObject 
	self allSlots do: [ :slot | slot initialize: anObject ]