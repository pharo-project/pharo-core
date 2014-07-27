hasFocus

	^ window hasKeyboardFocus or: 
		[ list hasKeyboardFocus or:
		[ classWidget hasFocus or: 
		[ categoryWidget hasFocus or:
		[ methodWidget hasFocus or:
		[ sourceTextArea hasKeyboardFocus ]]]]]