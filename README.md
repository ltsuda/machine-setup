# AUTOMATE PACKAGES INSTALLATION ON UBUNTU/WSL
## SHELL SCRIPT AND ANSIBLE TOOLS

### Tested on Virtualbox Machines and WSL:
- Ubuntu 18.04
- Ubuntu 20.04
- Ubuntu 22.04

## WSL2
For docker to work properly on WSL2, make sure to install and configure the Docker Desktop app for Windows, enabling the WSL2 backend and the WSL integration. Also, after running this playbook, make sure to reopen the WSL session to use the updated environment.

#### Steps to run:

`git clone https://github.com/ltsuda/machine-setup.git`

Make sure to replace the following variables on file vars/main.yml:
- WSL_USER => your linux user name
- EMAIL_TO_SSH_KEY_COMMENT => your email to be added to the ssh-key comment

Make sure site.yml and /wrapper/playbookwrapper.sh has Execution permission '-x'

`chmod +x ./site.yml wrapper/playbookwrapper.sh`

then run the following command with the correct variable "wsl" set o "yes" if you're running on the WSL or "no" to if it's running on a virtual machine.

` ./site.yml -i inventory -K -e "wsl=yes"`

**NOTE:**

` -K --ask-become-pass # ask for privilege escalation password `
` -e --extra-vars # additional variable`
