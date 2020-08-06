# ishetgezellig

Webpage based on time and rought estimate of DHCP-leases.
Estimation of DHCP-leases is can be done by two methods:
- Windows DHCP Server 
  - "netsh dhcp server scope 192.168.1.0 show clients | find /i "255.255.255.0" "
- UniFi® Security Gateway Pro 4 
  - "sudo /opt/vyatta/bin/vyatta-op-cmd-wrapper show dhcp leases pool net_{networkScopeName} | grep "{IP-ADDRESS}" | wc -l"
