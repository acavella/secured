<div align=center>
![alt text](https://tonycavella.com/wp-content/uploads/2016/12/logo_vert_500px-300x269.png "Secure.d Logo")
</div>

## Description
A shell based script used to harden Enterprise Linux installations.  Currently developed and tested on Red Hat Enterprise Linux 6 with plans for expansion to cover more Operating Systems.

* Project Page: https://tonycavella.com/projects/secured
* Github: https://github.com/tonycavella/secured

## Installation
Secure.d is distributed packaged in a gzip compressed tarball (secured_<ver>.tar.gz).  The latest package can be downloaded from the Secure.d project page.  

1. As `root`, copy the latest tarball to the `/root/` directory.
2. Upack the tarball inside the `/root/` directory.
```bash
# cp secured_<ver>.tar.gz /root/
# tar -xzvf secured_<ver>.tar.gz
```

## Usage 
The script utilizes a single main script `secured.sh` and multiple minor scripts located in the `bin` directory.  
