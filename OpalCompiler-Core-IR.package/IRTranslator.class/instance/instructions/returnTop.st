returnTop
	
	#pushReceiver == self pendingSelector ifTrue: [
		self pendingSelector: #returnReceiver.
		self doPending.
		^self popScopeIfRequired.
	].
	#pushLiteral: == self pendingSelector ifTrue: [
		self pendingSelector: #returnConstant:.
		self doPending.
		^self popScopeIfRequired.
	].
	#pushInstVar: == self pendingSelector ifTrue: [
		self pendingSelector: #returnInstVar:.
		self doPending.
		^self popScopeIfRequired.
	].
	self doPending.
	self popScopeIfRequired.
	gen returnTop.
	gen mapBytesTo: currentInstr. 


