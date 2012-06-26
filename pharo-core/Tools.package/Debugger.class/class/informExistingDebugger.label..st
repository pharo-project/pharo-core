instance creation
informExistingDebugger: aContext label: aString
	"Walking the context chain, we try to find out if we're in a debugger stepping situation.
	If we find the relevant contexts, we must rearrange them so they look just like they would
	if the methods were excuted outside of the debugger."
	| ctx quickStepMethod oldSender baseContext |
	ctx := thisContext.
	quickStepMethod := ContextPart compiledMethodAt: #quickSend:to:with:super:.
	[ctx sender == nil or: [ctx sender method == quickStepMethod]] whileFalse: [ctx := ctx sender].
	ctx sender == nil ifTrue: [^self].
	baseContext := ctx.
	"baseContext is now the context created by the #quickSend... method."
	oldSender := ctx := ctx sender home sender.
	"oldSender is the context which originally sent the #quickSend... method"
	[ctx isNil or: [ctx receiver isKindOf: self]] whileFalse: [ctx := ctx sender].
	ctx ifNil: [^self].
	"ctx is the context of the Debugger method #doStep"
	ctx receiver labelString: aString.
	ctx receiver externalInterrupt: false; proceedValue: aContext receiver.
	baseContext swapSender: baseContext sender sender sender.	"remove intervening contexts"
	thisContext swapSender: oldSender.	"make myself return to debugger"
	ErrorRecursion := false.
	^aContext