# docker_convert_html_to_gfm

# Description

DockerFile that allows to convert HTML to (Github) Markdown.
**Base image:** ubuntu:latest.
**Use techonologies:** pandoc, curl, less. 

**How to run this application locally:**
```
docker build -t task_5 .
docker run -it -e URI="<link>" --rm task_5
```
URI - environment variable, which consist url of website.
If you don't set URI, than default value is https://www.google.com/.
Link - our website.
  
**How to get this image from Docker hub:**
```
docker pul vsiniak12/task_5:latest
```

**How to run this image from Docker hub:**
```
docker run -it -e URI="<link>" --rm vsiniak12/task_5
```
