
#!/bin/sh
#
# This script will uninstall your current glpk, install glpk build dependencies
# and then build glpk 4.4.7 and pyglpk-0.3
#
# updated for use with a Docker specific installation
#
# Brett G. Olivier, December 2016
##############################################

# setup build  environment
apt-get update -y
apt-get install -y build-essential python-dev

# grab the source repository
git clone https://github.com/bgoli/cbmpy-glpk.git
cd cbmpy-glpk

# install glpk
cd glpk-4.47
apt-get -y purge glpk
apt-get -y install libgmp-dev
./configure --with-gmp
make
make check
make install
ldconfig

# install pyglpk
cd ../pyglpk-0.3
make
make install


