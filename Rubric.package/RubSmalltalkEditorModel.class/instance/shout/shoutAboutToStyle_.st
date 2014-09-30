shoutAboutToStyle: aSmalltalkEditingMode
	^ client ifNil: [ true ] ifNotNil: [ client shoutAboutToStyle: aSmalltalkEditingMode ]