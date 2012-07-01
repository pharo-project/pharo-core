private
notify: anObject ofEvents: eventsCollection using: oneArgumentSelector
	"Notifies an object of any events in the eventsCollection. Send it back a message #oneArgumentSelector, with as argument the particular system event instance."

	eventsCollection do: [:eachEvent |
		eventSource when: eachEvent send: oneArgumentSelector to: anObject]