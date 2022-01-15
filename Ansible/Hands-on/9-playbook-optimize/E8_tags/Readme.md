# What are we doing with this playbook?
* This playbook will be useful when you deal with large playbooks.
* It allows you to run only specific task of play instead running complete in the playbook. 
* This can be achieved using `tags` attribute
* When you execute a playbook, you can filter tasks based on 2 kind of tags.

  `--tags`
  `--skip-tags`

# Code explanation
* `playbook` 
   - Using tags to split tasks and run partially.
   - If you are running this code from root user comment lines 3 & 4

# How to execute playbook with tags?
 - Run playbook on hosts defined in inventory file (default)
   `ansible-playbook playbook_name.yml`
  
 - Using tags
   `ansible-playbook playbook_name.yml --tags "http"`
   `ansible-playbook playbook_name.yml --tags "ntp"`
   `ansible-playbook playbook_name.yml --tags "php"`

 - Using skip-tags
   `ansible-playbook playbook_name.yml --skip-tags "http"`
   `ansible-playbook playbook_name.yml --skip-tags "ntp"`
   `ansible-playbook playbook_name.yml --skip-tags "php"`

  - Using multiple tags
   `ansible-playbook playbook_name.yml ---tags "httpd, ntp"`
    
 - Running playbook by passing password
   root user password     : `ansible-playbook playbook_name.yml --tags "http" –k`
   non-root user password : `ansible-playbook playbook_name.yml --tags "http" –K`

 - Run Playbook on single host
   `ansible-playbook playbook_name.yml -i hostname1, hostname2 --tags "http"`

 - Run Playbook on custom inventory file
   `ansible-playbook -i inventoryfilename playbook_name.yml --tags "http"`
   
 - Playbook Dry run
   `ansible-playbook playbook_name.yml –check --tags "http"`