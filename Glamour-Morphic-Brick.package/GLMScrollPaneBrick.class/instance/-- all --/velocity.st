velocity

	^ velocity ifNil: [ velocity := self class defaultScrollVelocity ]