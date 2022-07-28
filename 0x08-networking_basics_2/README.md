# Practical Linux Netcat NC Command Examples
Netcat or nc is a networking utility for debugging and investigating the network.

This utility can be used for creating TCP/UDP connections and investigating them. The biggest use of this utility is in the scripts where we need to deal with TCP/UDP sockets.

# Netcat in a Server-Client Architecture
The netcat utility can be run in the server mode on a specified port listening for incoming connections.

```$ nc -l 2389```

Also, it can be used in client mode trying to connect on the port(2389) just opened

```$ nc localhost 2389```

Now, if we write some text at the client side, it reaches the server side. Here is the proof :

```$ nc localhost 2389
HI, server```

On the terminal where server is running :

```$ nc -l 2389
HI, server```

So we see that netcat utility can be used in the client server socket communication.

# Use Netcat to Transfer Files
The netcat utility can also be used to transfer files. At the client side, suppose we have a file named ‘testfile’ containing :

```$ cat testfile
hello test```

and at the server side we have an empty file ‘test’

Now, we run the server as :

```$ nc -l 2389 > test```

and run the client as :

```cat testfile | nc localhost 2389```

Now, when we see the ‘test’ file at the server end, we see :

```$ cat test
hello test```

So we see that the file data was transfered from client to server.

# Netcat Supports Timeouts
There are cases when we do not want a connection to remain open forever. In that case, through ‘-w’ switch we can specify the timeout in a connection. So after the seconds specified along with -w flag, the connection between the client and server is terminated.

Server :

```nc -l 2389```

Client :

```$ nc -w 10 localhost 2389```

The connection above would be terminated after 10 seconds.

NOTE : Do not use the -w flag with -l flag at the server side as in that case -w flag causes no effect and hence the connection remains open forever.
