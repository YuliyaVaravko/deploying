# Deployment automation!!!

## Used tools:
- **_CI-CD_**: Jenkins
- **_IaC_**: Ansible
- **_Containerization_**: Docker
- **_SCM_**: GIT
- **_Web Server_**: NGINX
- **_Languages_**: Bash (executable script), YAML (Ansible configuration), Groovy (Jenkinsfile)

## Detailed project information
- You can see all deployment steps in **_Jenkinsfile_**.
- Script for collect information about the system (**_script.sh_**) has been developed.
- Ansible playbook (**_script.yml_**) for execution script has been developed.
- Jenkins builds image based on Dockerfile (**_docker/Dockerfile_**) and pushes it to DockerHub repo **(this step has been included only for practice working with jenkins plugins)**. Dockerfile is checked against its downloaded from the git repository previous version before creating and pushing docker_image.
- Ansible playbook (**_docker.yml_**), which prepares the target system to launch the container with the nginx Web-server, pulls the image from Dockerhub, mounts the directory with the default page {the result of the script execution} has been developed.
- For tracking changes in the GitHub repository webhook (using **_ngrok_** utility) was configured for any push to the repository. 

# Contact information
Yuliya Varavko

yuliya.varavko@gmail.com

www.linkedin.com/in/yuliya-varavko

+375(29)3864588
