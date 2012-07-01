stepping and presenter
stepAction
	| newContents |
	
	newContents := self contents.
	newContents := newContents allButFirst , newContents first asString.
	self privateSetContents: newContents