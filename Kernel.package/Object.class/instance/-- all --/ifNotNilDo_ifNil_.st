ifNotNilDo: aBlock ifNil: nilBlock
	"please use #ifNotNil:ifNil: "

	^ aBlock value: self
