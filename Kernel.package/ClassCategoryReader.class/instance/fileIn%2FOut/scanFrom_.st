scanFrom: aStream 
	"File in methods from the stream, aStream."
	| methodContent |
	[methodContent := aStream nextChunk.
	 methodContent size > 0]
		whileTrue:
		[class compile: methodContent classified: category
			withStamp: changeStamp notifying: nil]