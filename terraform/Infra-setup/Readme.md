# Create new folder in your machine
* Folder structure
  D drive -> Shared
     
# Open VScode:
   Navigate to File -> open -> select the created folder
  
# Run Vagrant command
   * Click on folder data under shared.
   * Run command `vagrant init`
   * Note : You can find `Vagrantfile` which will be created automatically
   * delete the auto created `Vagrantfile`
   * copy the `Vagrantfile` which is given with the `shell script`

# Machine creation
* create vm         : `vagrant up`
* ssh to created vm : `vagrant ssh terraform`
* stop vm           : `vagrant halt terraform`
* destroy vm        : `vagrant destroy`