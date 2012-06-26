testing
testCounting
	| qA qB procA procB counter |
	qA := SharedQueue new.
	qB := SharedQueue new.
	counter := 0.
	procA := [[ counter := qA next. qB nextPut: #ack ] repeat ] newProcess.
	procB := [ |x| x := 0. [ x:= x + 1. qA nextPut: x.  self assert: (qB next = #ack) ] repeat ] newProcess.
	[	procA resume.
		procB resume.
		(Delay forMilliseconds: 10) wait
	] ensure: [procA terminate. procB terminate].
	self assert:  (counter > 100).
	"Transcript show: 'counter = '; show: counter; cr; flush"