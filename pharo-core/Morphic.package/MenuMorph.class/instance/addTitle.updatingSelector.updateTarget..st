construction
addTitle: aString updatingSelector: aSelector updateTarget: aTarget 
	"Add a title line at the top of this menu Make aString its initial  
	contents.  
	If aSelector is not nil, then periodically obtain fresh values for  
	its contents by sending aSelector to aTarget.."
	^ self
		addTitle: aString
		icon: nil
		updatingSelector: aSelector
		updateTarget: aTarget