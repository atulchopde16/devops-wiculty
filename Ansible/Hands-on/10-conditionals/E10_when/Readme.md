# What are we doing with this playbook?
* Using this playbook we are creating conditional based tasks.
* Sometimes you will want to skip a particular step on particular host.
* This could be something as simple as not installing a certain package, if the operating system is in particular version or it also could be something like performing some clean up steps if a filesystem is getting full
* This process is very much easy with Ansible with the When statement.

# Code explanation
* `playbook` 
   - This playbook helps to create conditional based tasks.
   - If you are running this code from root user comment lines 3 & 4

# How to execute playbook?
 - Run playbook on hosts defined in inventory file (default)
   `ansible-playbook playbook_name.yml`

 - Running playbook by passing password
   root user password     : `ansible-playbook playbook_name.yml –k`
   non-root user password : `ansible-playbook playbook_name.yml –K`

 - Run Playbook on single host
   `ansible-playbook playbook_name.yml -i hostname1, hostname2`

 - Run Playbook on custom inventory file
   `ansible-playbook -i inventoryfilename playbook_name.yml`
   
 - Playbook Dry run
   `ansible-playbook playbook_name.yml –check`

# Example when combinations
- Examples 1 : Multiple conditions that all need to be true can be specified as a list.
tasks:
  - name: "shut down CentOS 6 systems"
    command: /sbin/shutdown -t now
    when: ansible_os_family == “Centos“ and ansible_lsb.major_release == "6"

- Examples 2 : Doing operation on multiple operating systems.
tasks:
  - name: "shut down CentOS 6 and Debian 7 systems"
    command: /sbin/shutdown -t now
    when: (ansible_distribution == "Ubuntu" and ansible_distribution_version == "16.04")  or
               (ansible_distribution == “Centos" and ansible_distribution_version == “7")
