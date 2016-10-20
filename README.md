# ArpSpoof: ARP cache poisoner

ArpSpoof is a simple ARP cache poisoning program coded in C. This a very little and simple tool, which provides an interface to throw a Man In The Middle attack in a local network and intercep the network traffic of the victim. 

- Synopsis
- Description
- Options
- Example
- Links

# Synopsis

Building the ARPSpoof program.

```
$ git clone https://github.com/VincentDary/ArpSpoof.git
$ cd ArpSpoof
$ make && make clean
```

Usage:

```
# ./ArpSpoof
#  usage: ArpSpoof <interface> <target mac> <target IPv4> <source mac> <fake IPv4>
```

# Description

ArpSpoof is a ARP cache poisoning program for the MITM attack based on ARP poisoning, more information about this attack [2].

# Options

- interface

The network interface where to start the ARP packets injection.


- target mac

The target MAC address of the victim.


- target IPv4

The target IPv4 address of the victim.


- source mac

The source MAC address associated to the <interface> parameter, where the ARP packets injection is started.


- fake IPv4

The IPv4 address to usurp.


Note:

This tool doesn't forward the network traffic of the victim. It's more flexible solution. You can use an other tool for this or enable it on your machine or on the machine where the network traffic is redirect. 

