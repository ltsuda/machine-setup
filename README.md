# AUTOMATE PACKAGES INSTALLATION ON LINUX
## SHELL SCRIPT AND ANSIBLE TOOLS

### Tested on Virtualbox Machines:
- Ubuntu 18.04

#### Steps to run:

` git clone https://github.com/ltsuda/machine-setup.git `

Make sure site.yml and /wrapper/playbookwrapper.sh has Execution permission '-x'

` ./site.yml -i inventory -K `

**NOTE:**

` -K --ask-become-pass # ask for privilege escalation password `
