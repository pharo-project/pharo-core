hasFocus

	^ window hasKeyboardFocus or: 
		[ list hasKeyboardFocus or:
		[ list2 hasKeyboardFocus or: 
		[ categoryWidget hasFocus or:
		[ methodWidget hasFocus or:
		[ sourceTextArea hasKeyboardFocus ]]]]]