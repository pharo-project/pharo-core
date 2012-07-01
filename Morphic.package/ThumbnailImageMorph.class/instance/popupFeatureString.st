accessing
popupFeatureString
	"Answer the string to be shown in a menu to represent the  
	stickiness status"
	^ (self yesNoStringFor: (isPopup == true ) )
		, 'Popup feature' translated