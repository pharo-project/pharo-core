menu
removeHandles
	"tk 9/2/97 allow it to be called twice (when nil already)"

	handles ifNotNil: [
		handles do: [:h | h delete].
		handles := nil].