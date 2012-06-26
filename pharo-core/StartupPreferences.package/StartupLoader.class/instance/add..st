accessing
add: anAction

	^ actions at: anAction name ifAbsentPut: [ anAction ]