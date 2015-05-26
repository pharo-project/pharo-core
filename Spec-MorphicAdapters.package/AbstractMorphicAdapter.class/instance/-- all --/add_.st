add: aWidget
	
	self widgetDo: [ :w | w ensureLayoutAndAddMorph: aWidget asWidget ]