# docker-mkdocs
A docker container image for mkdocs  
  
### How to deploy?
1. By using Docker Hub: ``docker run -d --name mkdocs -v /path/to/mkdocs/project:/opt/mkdocs xosadmin/docker-mkdocs``
- Optional Environment Variables:  
``-e project=project-name``: to specify project name if requires to create a new project during start up. It is not required if there is an existing project in the directory.  
  