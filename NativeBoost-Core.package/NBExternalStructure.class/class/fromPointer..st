instance creation
fromPointer: externalAddress
	| inst |
	
	inst:= self new.
	NativeBoost memCopy: externalAddress to: inst size: self instanceSize.
	^ inst