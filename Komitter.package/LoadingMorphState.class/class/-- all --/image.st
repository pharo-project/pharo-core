image

	^ image ifNil: [ image := self formFromContents: self imageData ]