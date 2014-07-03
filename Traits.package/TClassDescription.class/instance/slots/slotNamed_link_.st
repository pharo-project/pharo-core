slotNamed: aName link: aLink
	| slot |
	slot := self slotNamed: aName.
	slot link: aLink.
	slot setClass: self.
	
	self compileAll. "for now just recompile the whole class"
	