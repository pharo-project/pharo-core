quickSend: selector to: receiver with: arguments super: superFlag
	"Send the given selector with arguments in an environment which closely resembles the non-simulating environment, with an interjected unwind-protected block to catch nonlocal returns.
	Attention: don't get lost!"
	| lookupClass contextToReturnTo result |
	contextToReturnTo := self.
	lookupClass := superFlag
					ifTrue: [(self method literalAt: self method numLiterals) value superclass]
					ifFalse: [receiver class].
	[ | oldSender |
	oldSender := thisContext sender swapSender: self.
	result := receiver perform: selector withArguments: arguments inSuperclass: lookupClass.
	thisContext sender swapSender: oldSender] ifCurtailed: [
		contextToReturnTo := thisContext sender receiver.	"The block context returning nonlocally"
		contextToReturnTo jump: -1.	"skip to front of return bytecode causing this unwind"
		contextToReturnTo nextByte = 16r7C ifTrue: [
			"If it was a returnTop, push the value to be returned.
			Otherwise the value is implicit in the bytecode"
			contextToReturnTo push: (thisContext sender tempAt: 1)].
		thisContext swapSender: thisContext home sender.	"Make this block return to the method's sender"
		contextToReturnTo].
	contextToReturnTo push: result.
	^contextToReturnTo