renameTo: aString 
	| oldName |
	
	self name = aString ifTrue: [ ^ self ].
	
	oldName := self name.
	self basicRenameTo: aString.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		self class environment organization 
			renameCategory: oldName 
			toBe: aString ].