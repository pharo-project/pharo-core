private
newSessionObject

"Just answer unique object, which can never be identical to any
previous session object, this is all what we need for detecting session change.
A session object don't needs to carry any state, it just needs to be unique (we have plenty of
other objects in image which can do this for us). "
	^ Object new