handlesKeyboard: evt
	^ evt keyCharacter == Character tab and: [ self tabAmongFields ]