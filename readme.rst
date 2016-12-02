cbmpy-glpk
==========

Download the install script that will install GLPK/PyGLPK for CBMPy on Ubuntu 14.04 or newer::

 curl --remote-name https://raw.githubusercontent.com/bgoli/cbmpy-glpk/master/install_glpk.sh

Make executable::

 chmod 744 install_glpk.sh

and run::

 ./install_glpk.sh

If you would like to use this in an Ubuntu based Docker build use the Docker specific version::

  curl --remote-name https://raw.githubusercontent.com/bgoli/cbmpy-glpk/master/install_glpk_docker.sh

Note this script is designed to be used for fast builds and will remove 
any installed version of GLPK (apt-get purge) and build and install 
the older version needed for PyGLPK.
	
You have been warned, no warranty of any kind assumed or otherwise, use at own risk!
 
- bgoli December 2016