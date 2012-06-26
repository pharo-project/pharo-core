protocol
itemFor: aCheckbox

	^ associationsWrapperToItem at: aCheckbox ifAbsent: [ nil ]