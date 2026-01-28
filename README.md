# ansible-project

> A code base I created based off what I feel like I can stump LLMs by having nuanced mistakes that are not bugs nor need fixing to run and get intended results. This was created for project tasks assigned by DataAnnotations.
> This is an ansible repository that is written in YAML with some Jinja logic in the files. Ansible requires Python to run.

---

## Setup Requirements
> This repository was ran and tested on Linux VMs, specifically Rocky Linux 9.6 which is close to RHEL Centos and Fedora. I used three VMs- one control node and two managed nodes.

### Infrastructure
- One Linux box as the control node
- One or more Linux boxes as the managed node(s)
- Networking that allows all Linux boxes to be reached via ssh to one another
- Minimal CPU, RAM, and storage is needed


### Software and Configuration
- All linux boxes need the root user as well as one other user that has root / sudo privileges. Preferably, this other user has the same name (not uid necessarily) on all boxes
- All linux boxes need Internet access
- dnf (not yum) on all nodes
- [Python 3.x](https://www.python.org/) on all nodes
- [Ansible 2.15.x](https://docs.ansible.com/) on only the control node
- Preferably no ssh timeout is configured

### Codebase setup
- ssh to the control node as the user with privileges
- Unzip the repository into its own folder
- At the root of the repository, open `dev-inventory.yml`
- Modify the file to have the hostnames of your managed node(s) in place of the placeholder hostnames / IP addresses
- Modify the `ansible_user` value to be the name of the user with sudo privileges for that given managed node
- Make sure to not mess with formatting nor remove colons. More managed nodes can be added by using additional entries in the same file

---

## Running the playbooks
Navigate to the root of the Ansible repository. This is where all playbooks are run from.

```bash
ansible-playbook -i dev-inventory.yml third-party-software.yml --ask-become-pass --ask-pass
ansible-playbook -i dev-inventory.yml uninstall-third-party-software.yml --ask-become-pass --ask-pass
```
> The first playbook `third-party-software.yml` installs random packages.  
> The second playbook `uninstall-third-party-software.yml` uninstalls the same packages.
>
> This serves as a demo and a foundation for a playground to have the LLM to understand and be tested on. Both playbooks are idempotent.