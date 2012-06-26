as yet unclassified
calculatedJoinMappings
	"Calculate the join parameters between src and dst
	and answer.
	sl = src line, dl = dst line, j = joins, ds = dst run start, ss = src run start
	de = dst run end, se = dst run end, mds = match dst start, mss = match src start"

	|sl dl j ds ss de se mds mss|
	sl := dl := 0.
	j := OrderedCollection new.
	ds := de:=  ss := se := mss := mds := 0.
	self difference do: [:p |
		p key = #match ifTrue: [
			sl := sl + 1.
			dl := dl + 1.
			mss = 0 ifTrue: [mss := sl. mds := dl].
			(ds > 0 or: [ss > 0]) ifTrue: [
				ss = 0 ifTrue: [ss := sl].
				ds = 0 ifTrue: [ds := dl].
				se = 0 ifTrue: [se := ss - 1].
				de = 0 ifTrue: [de := ds - 1].
				j add: (self newJoinSectionFrom: (ss to: se) to: (ds to: de)).
				ds := de := ss := se := 0]].
		p key = #remove ifTrue: [
			mss > 0 ifTrue: [
				j add: (self newMatchJoinSectionFrom: (mss to: sl) to: (mds to: dl)).
				mss := mds := 0].
			sl := sl + 1.
			ss = 0 ifTrue: [ss := sl].
			se := sl].
		p key = #insert ifTrue: [
			mss > 0 ifTrue: [
				j add: (self newMatchJoinSectionFrom: (mss to: sl) to: (mds to: dl)).
				mss := mds := 0].
			dl := dl + 1.
			ss > 0 ifTrue: [
				se = 0 ifTrue: [se := ss].
				de = 0 ifTrue: [de := ds].
				j add: (self newJoinSectionFrom: (ss to: se) to: (ds to: de)).
				ds := de := ss := se := 0].
			ds = 0 ifTrue: [ds := dl].
			de := dl]].
	sl := sl + 1.
	dl := dl + 1.
	(ds > 0 or: [ss > 0]) ifTrue: [
		ss = 0 ifTrue: [ss := sl ].	
		ds = 0 ifTrue: [ds := dl].
		se = 0 ifTrue: [se := ss - 1].
		de = 0 ifTrue: [de := ds - 1].
		j add: (self newJoinSectionFrom: (ss to: se) to: (ds to: de))].
	mss > 0 ifTrue: [
		j add: (self newMatchJoinSectionFrom: (mss to: sl - 1) to: (mds to: dl - 1))].
	^j