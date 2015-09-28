# Base image for Enonic CMS
Generic base image for Enonic CMS based on Oracle JDK 6

## Build local
```
docker build -t enoniccloud/enonic-cms-jdk6 .
```

## Run
This image should be a base for creating own images with Enonic CMS.
```
docker run -it --rm --name enonic-cms-jdk6 -e "CMS_DB_PASSWORD=fisk" enoniccloud/enonic-cms-jdk6
```


## Deploying Enonic CMS with this image.
To deploy a Enonic CMS container based on this image, you need to create a new image based on this one. Here's an example `Dockerfile`:

```
FROM enoniccloud/enonic-cms

# Copy the 
COPY webapps/root.war $CATALINA_HOME/webapps/.


COPY cms.home/* /$CMS_HOME/.
```

## Environment variables

Both database user and database name is hardcoded for ease of use to "cms", but the environment variable `CMS_DB_PASSWORD` needs to be set either in your Dockerfile, 