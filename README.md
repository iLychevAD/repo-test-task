### Description:

Downloads peervpn sources, compiles binary file, makes debian package, creates simple unsigned debian repository for Ubuntu Bionic and Xenial.

### To run:

ansible-playbook -i localhost, ansible.yml --tags <builder,compile,deb,repo>

`sources.list` example:

deb [trusted=yes] http://localhost/ bionic contrib

### Tags:

`builder` - build Docker image with scripts for binary compilation and package creation inside

`compile` - compile binary

`deb` - create deb package

`repo` - build and run Docker container with repository
