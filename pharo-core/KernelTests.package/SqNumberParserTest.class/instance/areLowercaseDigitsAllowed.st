utility
areLowercaseDigitsAllowed
	"Answer true if lowercase letter are allowed digits."
	
	^(SqNumberParser parse: '16re' onError: [-1]) = 16rE