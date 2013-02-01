initialize-release
fromInstructions: instructions
	
	bytes := ByteArray new: 100 streamContents: [:stream|
		instructions do: [ :each |
			each extractLabels: [:name :pos | labels at: name put: pos ].
			each storeOn: stream ]].