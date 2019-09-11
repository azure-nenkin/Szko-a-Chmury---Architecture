## #TYDZIEN3.1 

„Zbuduj prostą konwencję nazewniczą dla min. takich zasobów jak Grupa Zasobów, VNET, Maszyn Wirtualna, Dysk, Konta składowania danych. Pamiętaj o ograniczeniach w nazywaniu zasobów, które występują w Azure”

Konwencja w oparciu o https://docs.microsoft.com/en-us/azure/architecture/best-practices/naming-conventions z małymi poprawkmi dla VMs

<P><PRE>
&lt;globally unique name&gt;: app1data, service1, convers2 
&lt;service_short_name&gt;  : app1, ser1, con2 
&lt;environment&gt;         : dev, prod, QA 
&lt;role&gt;                : sql, web, messaging
&lt;disktype&gt;            : OS, Data, DB
</P>

<P><PRE>
Resource Group                : &lt;service_short_name&gt-&lt;environment&gt-rg     example: app1-test-rg 
VNET                          : &lt;service short name&gt-vnet                  example: app1-vnet
Virtual Machines              : &lt;service short name&gt-&lt;role&gt-vm<number&gt  example: app1-sql-vm1 
Managed Disk name             : &lt;disktype&gtdisk&lt;number&gt                    example: OSdisk1 
Storage account name (data)   : &lt;globally unique name&gt&lt;number&gt            example: app1data001
Storage account name (disks)  : &lt;vm name without hyphens&gtst&lt;number&gt       example: app1sqlvm1st0
</P>
