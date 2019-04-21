# Dockerfile :
#     servercore-for-service.c

Arg imageVersion="latest"

# For the image servercore-for-service.c :
# servercore-for-service.c

# Building image..

From servercore.c:${imageVersion}

Label maintainer="Autumn Chiang <autumn.snoopy@hotmail.com>"
Label package.Monitor.version="2.0.1.3"
Label package.Monitor.pkg.digests="FF31018FA20D"
Label package.Monitor.pkg.description="Monitor monitors Windows Service for container environment."

# installing..
# installing package Monitor..
Arg package_Monitor_name="Monitor"
Arg package_Monitor_version="Latest"
Arg package_Monitor_installdir="C:/Windows"
    # get archive..
    Add archive/package/#Monitor/${package_Monitor_version}/Monitor.exe ${package_Monitor_installdir}/

# Configuring image..

Onbuild Entrypoint ["C:/Windows/Monitor.exe"]