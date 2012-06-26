basic api
forceToScreen: damageRectangle 
	"update the area defined by damageRectangle"
	windowProxy ifNotNil:[ windowProxy forceToScreen: damageRectangle]