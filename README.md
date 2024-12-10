# Final Project in CPE 212 - Automating Server Management
### Building a Web App using Ansible Playbook and Docker
#### Team Members:
- **Bringuela, Tracey Dee**
  - (Ansible Developer and Documentation)
- **Chavez, Clarence**
  - (Web Designer and Ansible Developer)
- **Nicolas, Khelvin**
  - (Dockerfile and Ansible Developer)
- **Zamora, Angelo**
  - (Ansible Developer and Documentation)

### Structure of the Project:
- The file management of the projects alongside the HTML files for the Web App and the Ansible playbooks are structured and organized properly as seen below:
```bash
├── ansible.cfg
├── Docker
│   ├── Dockerfile
│   └── Website
│       ├── Group 2 File Compilation
│       │   ├── Tracey Bringuela
│       │   │   └── <PDF Files of Activities>
│       │   ├── Clarence Chavez
│       │   │   └── <PDF Files of Activities>
│       │   ├── Khelvin Nicolas
│       │   │   └── <PDF Files of Activities>
│       │   └── Angelo Zamora
│       │       └── <PDF Files of Activities>
│       ├── images
│       │   └── chavez.jpg
│       ├── img1.jpg
│       ├── img2.jpg
│       ├── index.html
│       ├── logo.png
│       ├── placeholder.jpg
│       └── website.css
├── inventory
├── README.md
├── roles
│   ├── CentOS
│   │   └── tasks
│   │       └── main.yml
│   └── Ubuntu
│       └── tasks
│           └── main.yml
├── setup.yml
└── website.yml

25 directories, 66 files

Generated using tree command in Linux.
```

# Step-by-Step: Building a Web App using Ansible Playbook and Docker
Assume that the `inventory` file was already set with the correct IP addresses for the managed nodes and the configurations for `ansible.cfg`.

### 1. Run Site Playbook using `ansible-playbook --ask-become-pass setup.yml` command

> Make sure to enter the sudo password to proceed with the playbook running process.

This Ansible playbook automates the process of installing Docker, configuring it, and deploying a containerized web application on both Ubuntu and CentOS servers. It begins with pre-tasks to ensure the repository indexes are updated, tailored for the specific Linux distribution. For CentOS, it installs `yum-utils` and sets up Docker's repository using `get_url` to download and place the Docker repo file. On Ubuntu, it directly installs Docker using the `docker.io` package.

The playbook then proceeds to install Docker, using the package module on Ubuntu and the yum module for Docker on CentOS, ensuring the latest versions are installed. Following the installation, Docker's service is started and enabled to ensure it runs at boot on both distributions.

In the post-tasks section, the playbook deploys a container named `sampleweb` using the docker_container module, based on the `khlvn/web-app:latest` image, mapping port 8080 on the host to port 80 on the container. Roles are defined to segregate tasks for Ubuntu and CentOS, ensuring modular and reusable task structures. This approach makes the playbook versatile for managing Docker across mixed environments.

  ### 1.1 Running the CentOS role `main.yml` task
  This segment of the playbook ensures that the user running the tasks is added to the Docker group, which allows managing Docker commands without root privileges. The ansible.builtin.user module appends the current user ({{ ansible_user }}) to the docker group, enabling permissions to use Docker efficiently.

  The playbook then pulls the khlvn/web-app:latest Docker image using the docker_image module, fetching it from the Docker registry. This step is also limited to CentOS with a when condition checking the OS.

  ### 1.2 Running the Ubuntu role `main.yml` task
  This portion of the playbook focuses on tasks for Ubuntu servers. It starts by ensuring the current user ({{ ansible_user }}) is added to the docker group using the ansible.builtin.user module. This allows the user to execute Docker commands without needing root permissions. The append: true ensures that the Docker group is added to the user's existing group memberships.

  The playbook then pulls the Docker image khlvn/web-app:latest from the Docker registry using the docker_image module. This step is conditional and only executes on Ubuntu systems (when: ansible_distribution == "Ubuntu).

### 2. (OPTIONAL) Testing the Web App 

To verify connectivity and functionality of the web application, execute the Website Playbook using the command:
`ansible-playbook --ask-become-pass website.yml`.

This playbook utilizes curl to fetch the URL of the web application, providing a quick and automated way to confirm connectivity. However, for a more comprehensive verification, accessing the application directly via a web browser at localhost:8080 is recommended. This approach not only ensures connectivity but also allows users to fully interact with and observe the web application's interface and content, offering a more complete evaluation of its functionality.

