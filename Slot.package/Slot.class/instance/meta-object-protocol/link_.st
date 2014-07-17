link: aMetaLink
	| wrapper class |
	class := self definingClass.
	wrapper := LinkWrapper new.
	wrapper link: self.
	wrapper setClass: class.
	wrapper slot: self.
	self flag: #TBD.
	"we need to echange the slot in th layou"
	self usingMethods do: [ :each | each recompile ]