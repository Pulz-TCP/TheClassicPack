# The Classic Pack server Docker container

The idea is to have a way to create servers for [The Classic Pack](https://www.technicpack.net/modpack/tc-redux.786294) using Docker.

## Motivation

Most guides on how to run a minecraft server use `screen` to start it but I rather use docker mainly because:
* The ability to automatically restart the server on crash or reboot
* Easier to cleanup
* I like to work with containers :)

## Starting the server

The command to start the server:
```
docker run -dti --restart always --name theclassipack_server -p 25565:25565 theclassicpack
```

Note that the `ti` options are required to allow the admins to access the server console.

## Accessing server console

To access the server console run:

```
docker attach theclassipack_server
``` 

To exit **do not** run `CTRL+c`, instead use the key combination `CTRL+p` followed by `CTRL+q`

## Managing the server

Useful commands to use on the server console

* Whitelist a player
```
whitelist add <username>
```

* Remove player from whitelist
```
whitelist remove <username>
```

* List all whitelist players
```
whitelist list
```

* OP user
```
op <username>
```

* DeOP user
```
deop <username>
```

## Backup server state

A cron job can be used to regularly backup the server.
The following setup is for a daily backup, where the older files is overwritten by the new one which has the same name.

Create a script
```
#!/bin/bash

WD_TMP=/tmp/wd_minecraft_backup
DAY=$(date +%A)

# Create and set working directory
mkdir $WD_TMP
cd $WD_TMP

# Copy server folder from container
docker cp theclassipack_server:/opt/minecraft .

# Compress backup to reduce space
tar czf /path/to/backupdir/$DAY-minecraft_sv_backup.tar.gz minecraft

# Cleanup temp directory
rm -rf $WD_TMP
```

Setup a cronjob, this runs every day at 4.30AM 
```
crontab -e
30 4 * * * /path/to/script
```