popTop

	"if last was storeTemp,  storeInstVar storeIntoLiteralVariable then convert to storePopTemp, storePopInstVar storePopIntoLiteralVariable"
	#storeTemp: == self pendingSelector ifTrue: [
		 self pendingSelector: #storePopTemp:.
		^ self doPending.	].
	#storeInstVar: == self pendingSelector ifTrue: [
		 self pendingSelector: #storePopInstVar:.
		^ self doPending.].
	#storeIntoLiteralVariable: == self pendingSelector ifTrue:[
		 self pendingSelector: #storePopIntoLiteralVariable:.
		^ self doPending.].
	#storeRemoteTemp:inVectorAt: == self pendingSelector ifTrue:[
		self pendingSelector: #storePopRemoteTemp:inVectorAt:.
		^ self doPending.].
	"otherwise do normal pop"
	self doPending.
	gen popTop.
	gen mapBytesTo: currentInstr. 

