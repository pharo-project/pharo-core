instructionsCDQ

"CBW/CWDE/CDQE Convert Byte to Word/Convert Word to
Doubleword/Convert Doubleword to Quadword"
^#(

(#cbw #emit 0 0 "R" 0 "C1" 16r66000098 0 )
(#cwde #emit 0 0 "R" 0 "C1" 16r00000098 0 )
(#cdqe #emit #x64 0 "R" 0 "C1" 16r48000098 0 )

"CWD/CDQ/CQO Convert Word to Doubleword/Convert Doubleword to
Quadword"

(#cwd #emit 0 0 "R" 0 "C1" 16r66000099 0 )
(#cdq #emit 0 0 "R" 0 "C1" 16r00000099 0 )
(#cqo #emit #x64 0 "R" 0 "C1" 16r48000099 0 )

)