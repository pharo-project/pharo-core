data
	"If data is nil, it means the query is not yet done. Then the client is frozen until the end of the query (or until I am released).
	Then if it is release, `nullObject` is returned instead of the query result"
	
	data ifNil: [ semaphore wait ].
	semaphoreIsValid ifFalse: [ ^ nullObject ].
	
	^ data