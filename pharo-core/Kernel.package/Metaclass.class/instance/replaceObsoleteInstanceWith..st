private
replaceObsoleteInstanceWith: newInstance
	thisClass class == self ifTrue:[^self error:'I am fine, thanks'].
	newInstance class == self ifFalse:[^self error:'Not an instance of me'].
	thisClass := newInstance.