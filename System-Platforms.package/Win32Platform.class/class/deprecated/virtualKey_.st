virtualKey: virtualKeyCode
	self deprecated: 'Do not refer to OSPlatform directly, use `Smalltalk os` instead' on: '2013-07-22' in: #Pharo30.
	"Win32Platform virtualKey: $C charCode"

	(virtualKeyCode <=  90 "$Z charCode"
		and: [virtualKeyCode >=  65 "$A "])
		ifFalse: [^nil].
	"#($a $b $c $d $e $f $g $h $i $j $k $l $m $n $o $p $q $r $s $t $u $v $w $x $y $z)"
	
	^(#($a nil $c $d nil $f $g nil nil nil nil $l $m $n nil $p nil nil $s nil nil $v nil $x nil $z)
		at: virtualKeyCode-64) ifNotNil: [:char | char charCode]