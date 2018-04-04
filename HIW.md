# HOW INTERNET WORKS
#### An summary from the Linux Documentation Project [tldp](http://en.tldp.org/HOWTO/Unix-and-Internet-Fundamentals-HOWTO/internet.html)

The frontpage of the home page on the web rest in the _index.html_ under the World Wide Web export directory of the host www.tldp.org. 
To locate this, the browser must establish a network connection to the machine hosting the document. This will be the _hostname_ of the host www.tldp.org and its corresponding _IP_ address. The browser queries using the **_name Server_** program which searches for the hostname across the network to resolve and issue the IP address with the browser which then exchanges bits directly.

 
The Domain Name System is a network of programs and databases that cooperates to translate hostnmaes into IP addresses. While a _domain_ is a collection of machines with a common suffix, subdomains can live under domains. An **authoritative** name server knows the IP addresses of other machines in the domain. A secondary DNS is actually a backup to the authoritative DNS. Nameservers do not have to know the locations of all the machines in other domains but just the root servers. While top-level domain servers knows where the domains directly under them are located.

Communication between the browser and DNS happens with packets. A packet is a block of bits with three important parts; 
- the _source address_ which is the ip address of your machine,
- the _destination address_
- the _service number or port number(80)_ indicating its a World Wide Web request.
This request is sent until it reaches a _router_. The router has a map of the internet in its memory which knows how to get to other neighbourhood routers. Routers are smart as they keep track of traffic routes using the fastest links when possible. Once packets reach the destination machine, the machine uses the service number to feed the packet to the web server. The web server replies to the source IP address. The size of the packets will vary according to the transmission media in the network and type of service.

The internet uses two protocols, stacked one on top of the other. The lower level _Interenet Protocol_ is responsible for labeling packets with the source and destination address of two computers exchanging information over a network. While teh upper level Transmission Control Protocol_ gives reliability. TCP packets contain a cheksum to enable detection of data corrupted by bad links. 

Web browsers and servers speak an application protocol running above the TCP/IP known as **Hyper Text Transfer Protocol**. Most internet services are implemented by server daemons that only wait on ports, watching for and executing incoming commands.
