*Manifest-Core
longDescription 
	^ 'Check for people using string concatenation inside some iteration message. Since string concatenation is O(n^2), it is better to use streaming since it is O(n) - assuming that n is large enough.
For example, 
string := String new.
set do: [:each |
	string := string, each asString].
^ string

is equivalent to 
w := WriteStream on: (String new).
set do: [:each |
	w nextPutAll: each asString].
^ w content
'