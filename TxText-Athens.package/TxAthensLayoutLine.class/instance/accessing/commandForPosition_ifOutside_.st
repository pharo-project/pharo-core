commandForPosition: aTextPosition ifOutside: aBlock
	"Answer the display command which correspond to given text position in line,
	or evaluate block if receiver does not contains given position"
	
	(interval contains: aTextPosition) ifTrue: [ 
			commands do: [ :each | (each contains: aTextPosition) ifTrue: [^ each ]]].

	^ aBlock value