tempNames

	^ [ self object tempNames ]
		on: Error
		do: [ #() ]