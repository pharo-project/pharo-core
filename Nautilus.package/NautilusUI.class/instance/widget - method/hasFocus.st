hasFocus

	^ window hasKeyboardFocus or: 
		[ self packageWidget hasFocus or:
		[ classWidget hasFocus or: 
		[ categoryWidget hasFocus or:
		[ methodWidget hasFocus or:
		[ sourceTextArea hasKeyboardFocus ]]]]]