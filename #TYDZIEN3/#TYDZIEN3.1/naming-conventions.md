#TYDZIEN3.1 

„Zbuduj prostą konwencję nazewniczą dla min. takich zasobów jak Grupa Zasobów, VNET, Maszyn Wirtualna, Dysk, Konta składowania danych. Pamiętaj o ograniczeniach w nazywaniu zasobów, które występują w Azure”

Konwencja w oparciu o https://docs.microsoft.com/en-us/azure/architecture/best-practices/naming-conventions z małymi poprawkmi dla VMs

<globally unique name>: app1data, service1, convers2
<service_short_name   : app1, ser1, con2  
<environment>         : dev, prod, QA
<role>                : sql, web, messaging
<disktype>            : OS, Data, DB

Resource Group                : <service_short_name>-<environment>-rg     example: app1-test-rg 
VNET                          : <service short name>-vnet                 example: app1-vnet
Virtual Machines              : <service short name>-<role>-vm<number>    example: app1-sql-vm1 
Managed Disk name             : <disktype>disk<number>                    example: OSdisk1 
Storage account name (data)   : <globally unique name><number>            example: app1data001
Storage account name (disks)  : <vm name without hyphens>st<number>       example: app1sqlvm1st0
