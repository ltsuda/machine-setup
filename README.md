# AUTOMATE PACKAGES INSTALLATION ON UBUNTU/WSL
## SHELL SCRIPT AND ANSIBLE TOOLS

### Tested on Virtualbox Machines and WSL:
- Ubuntu 18.04
- Ubuntu 20.04

#### Steps to run:

` git clone https://github.com/ltsuda/machine-setup.git `

Make sure to replace the following variables on file vars/main.yml:
- WSL_USER => your linux user name
- EMAIL_TO_SSH_KEY_COMMENT => your email to be added to the ssh-key comment

Make sure site.yml and /wrapper/playbookwrapper.sh has Execution permission '-x'

`chmod +x ./site.yml wrapper/playbookwrapper.sh`

then

` ./site.yml -i inventory -K `

**NOTE:**

` -K --ask-become-pass # ask for privilege escalation password `
