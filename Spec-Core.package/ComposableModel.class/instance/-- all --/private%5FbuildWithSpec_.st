private_buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"
	| adapter |
	adapter := self privateAdapterFromModel: self withSpec: aSpec.
	self setExtentAndBindingTo: adapter.	
	self flag: #PotentialBug. "here the adpater is passed and not the widget as in all the otheraSpec cases. So either this is left over of the logic to build widget based on a spec interpretation or this is simply a bug when the adpater concept was introduced."
	
	^ adapter