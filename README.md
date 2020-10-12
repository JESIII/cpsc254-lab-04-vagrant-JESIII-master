
# Lab 4: Vagrant

Virtual machines (VMs) are a valuable tool in developing, deploying, and managing applications. In this lab, the tool named Vagrant is introdcued. Vagrant builds and maintains portable virtual software development environments and can be used with a variety of other tools to provision VMs.

## Goals
* Create a Vagrantfile which defines a VM and the steps needed to provision the VM.
* Use BASH shell scripts to automate the provisioning of VMs.
* Install and configure an open source software application in the VM and automate the process.

## Prerequisites
For this assignment, you must have:
* a GitHub account linked to your university email address
* a Tuffix system (use of a VM is not recommended)

## Lab instructions

The lab has two parts. The first part is trivial and is meant to be an introduction to the Vagrant software. The second part requires requires both Vagrant and knowledge of shell scripting.

Application software shall be installed in part 2. Although in-depth knowledge of the software is not needed, you may find the following references useful in navigating the software configuration process:
* [MariaDB Knowledge Base](https://mariadb.com/kb/en/)
* [MySQL Documentation](https://dev.mysql.com/doc/)
* [Apache HTTP Server Documentation](https://httpd.apache.org/docs/2.4/)
* [PHP Manual](https://www.php.net/manual/en/)
* [How to Install Wordpress](https://wordpress.org/support/article/how-to-install-wordpress/)
* [Vagrant Documentation](https://www.vagrantup.com/docs/)
* [Apt CLI](https://wiki.debian.org/AptCLI)

### Cloning the Git Repository

Like the previous exercise, once you are logged into your GitHub account, open the assignment URL that your instructor has shared with you. (Most likely it will be on the class Titanium page.) Clone your repository and begin working on your laboratory assignment.

### Part 1: Getting Started with Vagrant++

The first part of the laboratory exercise to is to follow the steps given in the [Vagrant Getting Started](https://www.vagrantup.com/intro/getting-started/index.html) page.

Use the folder named part1 in your git repository for this portion of the laboratory exercise.

Please follow every step in the Getting Started guide, starting on the Install page and ending on the Providers page. Do not skip any steps.

After you have completed all the steps, the part1 directory shall contain two files: Vagrantfile and bootstrap.sh.

Next, modify Vagrantfile to use Hashicorp's Ubuntu 18.04 LTS 64-bit box, named [hashicorp/bionic64](https://app.vagrantup.com/hashicorp/boxes/bionic64). Additionally, change the port forwarding to forward port 80 on the guest to port 8008.

Apache2 is configured slightly differently so please create a directory in the part1 directory named *html*. Download and unpack the [Python 3.6.9 documentation tar ball](https://docs.python.org/3.6/archives/python-3.6.9-docs-html.tar.bz2) into the html directory in part1.

Edit the bootstrap.sh script that was previous created and add the following steps in the appropriate location in the script:
* Update the apt indices, `apt-get --yes update`
* Upgrade the installed software, `apt-get --yes upgrade`

Delete and re-provision the VM and confirm that the Python documentation is being served at [http://localhost:8008/python-3.6.9-docs-html/](http://localhost:8008/python-3.6.9-docs-html/).

### Part 2: A LAMP VM & Wordpress

In the directory named part2, create a new Vagrant project with a new Vagrantfile. This VM will use Hashicorp's Ubuntu 18.04 LTS 64-bit box, named [hashicorp/bionic64](https://app.vagrantup.com/hashicorp/boxes/bionic64).

Create a new bootstrap.sh script which does the following:
* Updates the apt indices and upgrades all installed software.
* Forward port 80 from the guest to port 9009 on the host.
* Install Apache 2, MySQL or MariaDB, and Wordpress along with any other supporting software.
* Configure the VM to serve a Wordpress site from the web server's root. In other words, visiting http://localhost:9009/ will load the Wordpress site on the VM.

Be aware that the Ubuntu Wordpress package will store the package's documentation in /usr/share/doc/wordpress. Please read README.Debian.gz and NEWS.Debian.gz to understand how to manually configure the Wordpress software. With the knowledge gained from these documents, ensure that the bootstrap.sh script in your project will correctly provision the VM to serve a Wordpress site by default.

### Pushing code to Git (submitting your assignment)

To submit your code, you will need to add the files that you want to submit, commit your changes, and push them into the GitHub repository.

## Rubric (10 points)
1. (4 points) The Vagrantfile and bootstrap.sh in part1 exists and correctly provisions a VM.
2. (3 points) The Vagrantfile and bootstrap.sh in part2 exists and provisions a VM with the correct software.
3. (3 points) Part2's bootstrap.sh correctly provisions the VM to serve a Wordpress site without any operator intervention.

Assignments that are not submitted through GitHub shall not be graded.

