integration-private
xmlEscape: aString on: stream
	"a poor man's convert... :/"
	| map |
	map := Dictionary newFromPairs: #(
				$" '&quot;' 
				$' '&apos;' 
				$< '&lt;' 
				$> '&gt;' 
				$& '&amp;').
	
	aString do: [ :c|
		map 
			at: c 
			ifPresent: [ :mapping| stream nextPutAll: mapping ] 
			ifAbsent: [ stream nextPut: c]]. 