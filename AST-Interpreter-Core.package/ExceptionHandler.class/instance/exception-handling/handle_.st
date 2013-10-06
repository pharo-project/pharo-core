handle: anError
	| value |
	self flag: 'TODO:do the ensure magic here..
	instead of ^ there is resume: that trigger all the unwind block in Pharo
	I think there should be some gotoContext changes here'.
	enabled := false.
	value := self block cull: anError.
	enabled := true.
	^ value