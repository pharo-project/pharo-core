enableShortcutReminder: aBoolean 
	
	Enabled := aBoolean.
	aBoolean ifFalse: [ self countingMenu removeAll ]