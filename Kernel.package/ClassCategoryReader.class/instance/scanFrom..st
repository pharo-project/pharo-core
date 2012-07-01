fileIn/Out
scanFrom: aStream 
	"File in methods from the stream, aStream."
	| methodText |
	[methodText := aStream nextChunkText.
	 methodText size > 0]
		whileTrue:
		[class compile: methodText classified: category
			withStamp: changeStamp notifying: nil]