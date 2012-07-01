I do quoted printable MIME decoding as specified in RFC 2045 "MIME Part One: Format of Internet Message Bodies".

Short version of RFC2045, Sect. 6.7:

	(1) Any octet, except a CR or LF that is part of a CRLF line break of the canonical (standard) form of the data being encoded, may be represented by an "=" followed by a two digit hexadecimal representation of the octet's value. [...]

	(2) Octets with decimal values of 33 through 60 inclusive, and 62 through 126, inclusive, MAY be represented as the US-ASCII characters which correspond to those octets [...].

	(3) Octets with values of 9 and 32 MAY be represented as US-ASCII TAB (HT) and SPACE characters,
 respectively, but MUST NOT be so represented at the end of an encoded line.  [...]

	(4) A line break in a text body, represented as a CRLF sequence in the text canonical form, must be represented by a (RFC 822) line break, which is also a CRLF sequence, in the Quoted-Printable encoding.  [...]

	(5) The Quoted-Printable encoding REQUIRES that encoded lines be no more than 76 characters long.  If longer lines are to be encoded with the Quoted-Printable encoding, "soft" line breaks
 must be used.  An equal sign as the last character on a encoded line indicates such a non-significant ("soft") line break in the encoded text.


--bf 11/27/1998 16:50