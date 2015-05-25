shoutAboutToStyle: myShoutStyler
	^ self model isNil or: [ (self model respondsTo: #shoutAboutToStyle:) not or: [ self model shoutAboutToStyle: self ] ]