testing
testRemoveFromSystem
	self t4 removeFromSystem.
	self deny: (Smalltalk globals includesKey: #T4).
	self assert: self t4 name = 'AnObsoleteT4'.
	self assert: self t4 methodDict isEmpty.
	self deny: (self t1 users includes: self t4)