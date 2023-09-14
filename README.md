requirements:

- ansible
- make

1. Create ./.pass file and put there your ansible password

2. Edit inventory.ini file to change server's addresses

3. Install ansible libraries:
   `$ make install-ansible-deps`

4. To change secrets:
   `$ make change-secrets`

5. Then setup Redmine servers
   `$ make setup-servers`

Test it: https://www.rdas.site

For next deploys:
`$ make deploy`

If you use DataDog monitoring:

1. Put your datadog api key in secrets:
   `$ make change-secrets`

2. Install datadog agents and checks:
   `make install datadog`

### Hexlet tests and linter status:

[![Actions Status](https://github.com/AntonSteshenko/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/AntonSteshenko/devops-for-programmers-project-76/actions)
