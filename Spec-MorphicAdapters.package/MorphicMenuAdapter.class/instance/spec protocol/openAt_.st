openAt: aPoint 

	self widgetDo: [ :w | w invokeAt: aPoint in: World allowKeyboard: true ]