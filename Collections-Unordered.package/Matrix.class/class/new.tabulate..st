instance creation
new: dim tabulate: aBlock
	"Answer a dim*dim matrix where it at: i at: j is aBlock value: i value: j."
	^self rows: dim columns: dim tabulate: aBlock