shoutAboutToStyle: aSmalltalkEditingMode
	^ interactionModel ifNil: [ true ] ifNotNil: [ interactionModel shoutAboutToStyle: aSmalltalkEditingMode ]