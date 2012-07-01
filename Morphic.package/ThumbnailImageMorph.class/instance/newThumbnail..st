accessing
newThumbnail: aForm
	"Use aForm as the new popupImage and update the thumbnail image."
	| scale  thumbForm border smoothing |

		scale := aForm extent scaleTo: desiredExtent .
		smoothing := (scale x < 1.0 or: [ scale y < 1.0 ]) ifTrue: [ 2 ] ifFalse: [ 1 ] .
		
		thumbForm := aForm magnify: aForm boundingBox by: scale smoothing: smoothing .
		
		self image: thumbForm . "heres where we put in a thumbnail"
		"We need the following to keep the border the right size. Otherwise it will shrink."
		(border := self borderStyle) == BorderStyle default ifFalse: [ self borderStyle: border ] .
		
		"We have changed clear the old and show the new"
		self invalidRect: self bounds . 