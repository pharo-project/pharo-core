testing
testImageName
	"Non regression test for http://bugs.squeak.org/view.php?id=7351"
	
	| shortImgName imageReference changesReference |
	shortImgName := 'Squeak3.10.2-7179-basic'.

	imageReference := (Smalltalk fullNameForImageNamed: shortImgName) asFileReference.
	self assert: imageReference parent fullName equals: Smalltalk imagePath.
	self assert: imageReference basename equals: 'Squeak3.10.2-7179-basic.image'.

	changesReference := (Smalltalk fullNameForChangesNamed: shortImgName) asFileReference.
	self assert: changesReference parent fullName equals: Smalltalk imagePath.
	self assert: changesReference basename equals: 'Squeak3.10.2-7179-basic.changes'.