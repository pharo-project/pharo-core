debugger access
shortStack
	"Answer a String showing the top ten contexts on my sender chain."

	^ String streamContents:
		[:strm |
		(self stackOfSize: 10)
			do: [:item | strm print: item; cr]]