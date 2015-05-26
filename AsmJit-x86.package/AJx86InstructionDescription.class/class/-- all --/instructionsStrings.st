instructionsStrings
"String operations, often used in conjunction with rep prefix for efficient batch operations"

"General note: 
- Memory locations written X / Y means X unless prefixed by address-size override (16r67), in that case Y."
^ #(

"Repeat prefixes, only to be used with string operations 
(Could be nice to create group emitPrefix, and build a stack of applied prefixes which can be checked for validity with next op)"
"When used, repeat string operation max (E)CX times or until condition met"

(#repne #emit 0 0 "R" 0 "C1" 16r000000F2 0 )   
(#repnz #emit 0 0 "R" 0 "C1" 16r000000F2 0 )   
(#rep #emit 0 0 "R" 0 "C1" 16r000000F3 0 )   
(#repe #emit 0 0 "R" 0 "C1" 16r000000F3 0 )   
(#repz #emit 0 0 "R" 0 "C1" 16r000000F3 0 )  

"Direction flag setters, only used by string ops"
(#cld #emit 0 0 "R" 0 "C1" 16r000000FC 0 ) "DF := 0, string ops increment addresses"
(#std #emit 0 0 "R" 0 "C1" 16r000000FD 0 )   "DF := 1, string ops decrement addresses"



"String input: 
	In 32-bit mode, input byte/word/doubleword from i/o port specified in DX to address in ES:EDI / ES:DI. 
	In 64-bit mode, input byte/word/doubleword, from i/o port specified in DX to address in RDI / EDI"
(#ins #smnemonic 0 0 "R" 0 "C1" 16r0000006C 0 )  "mnemonic, arg size determines actual prefixes/op"
(#insb #emit 0 0 "R" 0 "C1" 16r0000006C 0 )  "8 bit"
(#insw #emit 0 0 "R" 0 "C1" 16r6600006D 0 ) "16 bit" "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#insd #emit 0 0 "R" 0 "C1" 16r0000006D 0 )  "32 bit"
"(#insq #emit #x64 0  0 16r4800006D 0 ) 64bit version does not exist according to intel IS reference"

"String output:
	In 32-bit mode output byte/word/doubleword at address in DS:ESI / DS:SI to io port specified in DX. 
	In 64-bit mode, output byte/word/doubleword, at address in RSI/ESI to io port specified in DX "
(#outs #smnemonic 0 0 "R" 0 "C1" 16r0000006E 0 )  "mnemonic, arg size determines actual prefixes/op"
(#outsb #emit 0 0 "R" 0 "C1" 16r0000006E 0 )  "8 bit"
(#outsw #emit 0 0 "R" 0 "C1" 16r6600006F 0 ) "16 bit"  "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#outsd #emit 0 0 "R" 0 "C1" 16r0000006F 0 )  "32 bit"
"(#outsq #emit #x64 0 0 16r4800006F 0 ) 64bit version does not exist according to intel IS reference"

"String move:
	In 32-bit mode move byte/word/doubleword at address in DS:ESI / DS:SI to address in ES:EDI / ES:DI.
	In 64-bit mode move byte/word/doubleword/quadword at address in from RSI / ESI to address in RDI / EDI."
(#movs  #smnemonic 0 0 "R" 0 "C1" 16r000000A4 0 )  "mnemonic, arg sizes determines actual prefixes/op"
(#movsb #emit 0 0 "R" 0 "C1" 16r000000A4 0 )  "8 bit"
(#movsw #emit 0 0 "R" 0 "C1" 16r660000A5 0 ) "16 bit" "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#movsd #sddisambiguate 0 0 "R" 0 "C1" 16r000000A5 0 )  "32 bit"
(#movsq #emit #x64 0 "R" 0 "C1" 16r480000A5 0 ) "64bit, in 64-bit mode only. Naughtily embed required REX.W prefix"

"String compare: 
	In 32-bit mode compare byte/word/doubleword at address in DS:ESI / DS:SI to same at address in ES:EDI / ES:DI.
	In 64-bit mode compare byte/word/doubleword/quadword at address in RSI / ESI to same at address in RDI / EDI."
(#cmps  #smnemonic 0 0 "R" 0 "C1" 16r000000A6 0 )  "mnemonic, arg sizes determines actual prefixes/op"
(#cmpsb #emit 0 0 "R" 0 "C1" 16r000000A6 0 )  "8 bit"
(#cmpsw #emit 0 0 "R" 0  "C1" 16r660000A7 0 )  "16 bit" "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#cmpsd #sddisambiguate 0 0 "R" 0 "C1" 16r000000A7 0 )  "32 bit"
(#cmpsq #emit #x64 0 "R" 0 "C1" 16r480000A7 0 ) "64bit, in 64-bit mode only. Naughtily embed required REX.W prefix"

"String store: 
	In 32-bit mode store AL/AX/EAX at address in ES:EDI / ES:DI 
	In 64-bit mode store AL/AX/EAX/RAX to RDI / EDI "
(#stos #smnemonic 0 0 "R" 0 "C1" 16r000000AA 0 )  "mnemonic, arg sizes determines actual prefixes/op"
(#stosb #emit 0 0 "R" 0 "C1" 16r000000AA 0 ) "8bit"
(#stosw #emit 0 0 "R" 0 "C1" 16r660000AB 0 ) "16bit" "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#stosd #emit 0 0 "R" 0 "C1" 16r000000AB 0 ) "32bit"
(#stosq #emit #x64 0 "R" 0 "C1" 16r480000AB 0 ) "64bit, in 64-bit mode only. Naughtily embed required REX.W prefix"


"String load:
	In 32-bit mode load byte/word/doubleword from address in ES:EDI / ES:DI to AL/AX/ EAX 
	In 64-bit mode load byte/word/doubleword/quadword from address in RDI / EDI to AX / EAX / RAX"
(#lods  #smnemonic 0 0 "R" 0 "C1" 16r000000AC 0 )  "mnemonic, arg sizes determines actual prefixes/op"
(#lodsb #emit 0 0 "R" 0 "C1" 16r000000AC 0 ) "8bit"
(#lodsw #emit 0 0 "R" 0 "C1" 16r660000AD 0 ) "16bit"  "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#lodsd #emit 0 0 "R" 0 "C1" 16r000000AD 0 ) "32bit"
(#lodsq #emit #x64 0 "R" 0 "C1" 16r480000AD 0 ) "64bit, in 64-bit mode only. Naughtily embed required REX.W prefix"

"String scan:
	In 32-bit mode compare AL/AX/EAX L with ES:EDI / ES:DI  
	In 64-bit mode compare AL/AX/EAX/RAX with RDI / EDI"
(#scas  #smnemonic 0 0 "R" 0 "C1" 16r000000AE 0 )  "mnemonic, arg sizes determines actual op"
(#scasb #emit 0 0 "R" 0 "C1" 16r000000AE 0 ) "8bit"
(#scasw #emit 0 0 "R" 0 "C1" 16r660000AF 0 ) "16bit" "Mandatory Operand override prefix (16r66) in 32/64bit mode"
(#scasd #emit 0 0 "R" 0 "C1" 16r000000AF 0 ) "32bit"
(#scasq #emit #x64 0 "R" 0 "C1" 16r480000AF 0 ) "64bit, in 64-bit mode only. Naughtily embed required REX.W prefix"
)