truncation and roundoff
floor
"Answer the integer rectange to the topleft of receiver.
Return reciever if it already and integerRectange."

self isIntegerRectangle ifTrue: [ ^ self ] .

^origin floor corner: corner floor