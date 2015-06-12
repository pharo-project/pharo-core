readOnlyCopy
	"Answer a read only copy of self. The caller is responsible of closing it."

	^ self collect: [ :aStream | aStream ifNotNil: [ aStream readOnlyCopy ] ].

