initialization
initialize
	"Initialization code for PickList"

	wrapHolder := [ :i | i printString ] asValueHolder. 
	pickedItemsHolder := Set new asValueHolder.
	associationsWrapperToItem := Dictionary new asValueHolder.
	associationsItemToWrapper := Dictionary new asValueHolder.
	labelClickableHolder := true asValueHolder.
	defaultValueHolder := false asValueHolder.
	
	super initialize.