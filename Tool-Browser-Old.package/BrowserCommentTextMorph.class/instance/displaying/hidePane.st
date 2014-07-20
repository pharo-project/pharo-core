hidePane
	"Fixed to not keep doing the splitters. If we are hiden don't hide again!"

	| win |
	self owner ifNotNil: [
		win := self window ifNil: [^self].
		self window ifNotNil: [:window | window removePaneSplitters].
		self lowerPane ifNotNil: [:lp | 
			lp layoutFrame bottomFraction: self layoutFrame bottomFraction.
			lp layoutFrame bottomOffset: SystemWindow borderWidth negated].
		self delete.
		win updatePanesFromSubmorphs.
		win addPaneSplitters]