lastIsReturn
	^ (#(#ifTrue:ifFalse: #ifFalse:ifTrue: #ifNil:ifNotNil: #ifNotNil:ifNil:) includes: self selector)
		and: [ arguments first isBlock and: [ arguments first body lastIsReturn 
		and: [ arguments last isBlock and: [ arguments last body lastIsReturn ] ] ] ]