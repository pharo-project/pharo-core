private
scope: aNode with: aClass during: aBlock
	scope := aClass owner: scope node: aNode.
	^ aBlock ensure: [ scope := scope owner ]