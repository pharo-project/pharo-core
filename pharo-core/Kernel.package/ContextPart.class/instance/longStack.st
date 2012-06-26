debugger access
longStack
	"Answer a String showing the top 100 contexts on my sender chain."

	^ String streamContents:
		[:strm |
		(self stackOfSize: 100)
			do: [:item | strm print: item; cr]]