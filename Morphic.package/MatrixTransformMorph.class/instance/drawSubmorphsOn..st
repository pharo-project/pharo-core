drawing
drawSubmorphsOn: aCanvas
	aCanvas asBalloonCanvas transformBy: self transform
		during:[:myCanvas| super drawSubmorphsOn: myCanvas].