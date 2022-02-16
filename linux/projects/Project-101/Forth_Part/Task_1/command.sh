<<<<<<< HEAD
#!/bin/bash

sed -i "s/ec2-private_ip/$(cat info.json | grep PrivateIpAddress | cut -d'"' -f4 | sort -u | sed '1d')/ig" terraform.tf
=======
1.Bolum : 
sed -i "s/ec2-private_ip/$(grep PrivateIpAddress info.json | head -n1 | cut -d'"' -f4)/g" terraform.tf

2.Bolum : 
>>>>>>> 0e0e172b26a8aa35624be63bf0c2c17ea427d20f
