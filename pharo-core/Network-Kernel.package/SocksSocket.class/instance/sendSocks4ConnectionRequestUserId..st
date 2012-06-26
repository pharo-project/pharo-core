socks4
sendSocks4ConnectionRequestUserId: userId
	"The client connects to the SOCKS server and sends a CONNECT request when
it wants to establish a connection to an application server. The client
includes in the request packet the IP address and the port number of the
destination host, and userid, in the following format.

	+----+----+----+----+----+----+----+----+----+----+....+----+
	| VN | CD | DSTPORT |      DSTIP        | USERID       |NULL|
	+----+----+----+----+----+----+----+----+----+----+....+----+
	   1    1      2              4           variable       1
	"

	| requestString |
	requestString := ByteArray new writeStream.
	dstIP
		ifNil: [dstIP := NetNameResolver addressForName: dstName].
	requestString
		nextPut: 4;
		nextPut: self connectCommandCode;
		nextWordPut: dstPort;
		nextPutAll: self dstIP;
		nextPutAll: userId asByteArray;
		nextPut: 0.
	self sendData: requestString contents