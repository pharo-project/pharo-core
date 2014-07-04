slotNamed: aName link: aLink
	| slot wrapper |
	slot := self slotNamed: aName.
	wrapper := LinkWrapper new.
	wrapper link: aLink.
	wrapper setClass: self.
	wrapper slot: slot.
	
	self flag: #TBD.
	"Here we need to exchange the Slot in the layout"
	
	self compileAll. "for now just recompile the whole class"
	