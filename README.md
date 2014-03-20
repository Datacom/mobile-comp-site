mobile-comp-site
================

Home of the internal site running marscomp.datacom.co.nz

This website is deployed as a Docker container, and the Dockerfile is supplied.

## To build

    docker build -t docker.datacom.co.nz/marscomp .
    
## To deploy

Run the following command to retrieve and start the container on a server:

    docker run -d -p <desired port>:80 docker.datacom.co.nz/marscomp
    
Then configure the host to reverse proxy to the chosen port for the desired URL.
