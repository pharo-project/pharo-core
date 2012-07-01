as yet unclassified
setText
	"Set the src and dst text in the morphs applying
	prettyPrint if required."

	|src dst ctx|
	src := self srcText.
	dst := self dstText.
	ctx := self contextClass.
	(self prettyPrint and: [ctx notNil])
		ifTrue: [src isEmpty ifFalse: [
					src := ctx prettyPrinterClass 
						format: src
						in: ctx
						notifying: nil].
				dst isEmpty ifFalse: [
					dst := ctx prettyPrinterClass 
						format: dst
						in: ctx
						notifying: nil]].	
	self srcMorph setText: src; font: self theme textFont.
	self dstMorph setText: dst; font: self theme textFont