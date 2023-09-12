requirements:

- ansible
- make

$ make install-ansible-deps

$ make e

$ make setup-servers

then test: www.rdas.site

For next deploys:

$ make deploy

To change root password MySQL:

create .pass file with vault password

$ make change-secrets

### Hexlet tests and linter status:

[![Actions Status](https://github.com/AntonSteshenko/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/AntonSteshenko/devops-for-programmers-project-76/actions)
