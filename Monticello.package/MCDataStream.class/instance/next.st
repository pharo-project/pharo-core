write and read
next
	"Answer the next object in the stream."
	| type selector anObject isARefType pos internalObject |

	type := byteStream next.
	type ifNil: [pos := byteStream position.	"absolute!!"
		byteStream close.	"clean up"
		byteStream position = 0 
			ifTrue: [self error: 'The file did not exist in this directory'] 
			ifFalse: [self error: 'Unexpected end of object file'].
		pos.	"so can see it in debugger"
		^ nil].
	type = 0 ifTrue: [pos := byteStream position.	"absolute!!"
		byteStream close.	"clean up"
		self error: 'Expected start of object, but found 0'.
		^ nil].
	isARefType := self noteCurrentReference: type.
	selector := #(readNil readTrue readFalse readInteger	"<-4"
			readStringOld readSymbol readByteArray		"<-7"
			readArray readInstance readReference readBitmap	"<-11"
			readClass readUser readFloat readRectangle readShortInst 	"<-16"
			readString readWordArray foo 	"foo is a replacement for readWordArrayForSegment<-19"
			readWordLike readMethod "<-21") at: type.
	selector = 0 ifTrue: [pos := byteStream position.	"absolute!!"
			byteStream close. 
			self error: 'file is more recent than this system'. ^ nil].
	anObject := self perform: selector. "A method that recursively
		calls next (readArray, readInstance, objectAt:) must save &
		restore the current reference position."
	isARefType ifTrue: [self beginReference: anObject].

		"After reading the externalObject, internalize it.
		 #readReference is a special case. Either:
		   (1) We actually have to read the object, recursively calling
			   next, which internalizes the object.
		   (2) We just read a reference to an object already read and
			   thus already interalized.
		 Either way, we must not re-internalize the object here."
	selector == #readReference ifTrue: [^ anObject].
	internalObject := anObject comeFullyUpOnReload: self.
	internalObject == String ifTrue:[
		"This is a hack to figure out if we're loading a String class 
		that really should be a ByteString. Note that these days this
		will no longer be necessary since we use #withClassVersion:
		for constructing the global thus using a different classVersion
		will perfectly do the trick."
		((anObject globalObjectName == #String)
			and:[anObject constructorSelector == #yourself]) ifTrue:[
				internalObject := ByteString]].
	^ self maybeBeginReference: internalObject