###To run:

ansible-playbook -i localhost, ansible.yml --tags <builder,compile,deb,repo>

###Tags:

`builder` - build Docker image with scripts for binary compilation and package creation inside
`compile` - compile binary
`deb` - create deb package
`repo` - build and run Docker container with repository
