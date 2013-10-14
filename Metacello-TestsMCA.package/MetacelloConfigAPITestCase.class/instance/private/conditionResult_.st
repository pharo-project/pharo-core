conditionResult: resultString 
	"GemStone unconditionally prints Symbols with quotes, Squeak and Pharo do not"

	^(((resultString 
		copyReplaceAll: '#preloadForSupplyingAnswers' with: '#''preloadForSupplyingAnswers''')
			copyReplaceAll: '#postloadForSupplyingAnswers' with: '#''postloadForSupplyingAnswers''')
				copyReplaceAll: '#default' with: '#''default''')
