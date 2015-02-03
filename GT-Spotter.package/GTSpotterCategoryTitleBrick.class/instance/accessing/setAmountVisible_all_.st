setAmountVisible: visible all: all

	self amountBrick text: (visible asString, '/', all asString).
	self amountBrick changed