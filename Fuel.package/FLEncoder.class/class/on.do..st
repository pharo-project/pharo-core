instance creation
on: aStream do: aBlock
	
	| anEncoder |
	anEncoder := self on: aStream.
	^ [ aBlock value: anEncoder ] ensure: [ anEncoder flush ]