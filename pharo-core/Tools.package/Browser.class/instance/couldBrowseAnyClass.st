accessing
couldBrowseAnyClass
	"Answer whether the receiver is equipped to browse any class. This is in
	support of the system-brower feature that allows the browser to be
	redirected at the selected class name. This implementation is clearly
	ugly, but the feature it enables is handsome enough. 3/1/96 sw"
	self dependents
		detect: [:d | (d respondsTo: #getListSelector)
				and: [d getListSelector == #systemCategoryList]]
		ifNone: [^ false].
	^ true