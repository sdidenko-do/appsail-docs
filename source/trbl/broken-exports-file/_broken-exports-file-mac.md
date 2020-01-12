When using the "netfs" [mount-type](/local-config/configure-nanobox/#mount-type), Nanobox mounts your codebase into your Nanobox container using NFS. NFS stores a registry of mounted directories in an exports config file located at `/etc/exports`. It's possible and fairly common for changes to this file to prevent the NFS mounts from working.

A clean exports file will looks something like this:

```
/Users/user/directory/app-dir-1 /Users/user/directory/app-dir-2 /Users/user/directory/app-dir-3 /Users/user/directory/app-dir-4 192.168.99.100 -alldirs -mapall=501:20
```

*Note that in OSX, all exports are listed on a single line*

Scenarios that could lead to a broken export config file and potential solutions to each scenario are explained below.

## Mounted Directory No Longer Exists
If you ever remove a directory containing a nanobox project without running a `nanobox destroy`, it will leave "orphaned" mounts in your exports file and prevent the NFS service from starting. In some cases, this will also affect your machine's boot process, but is easily fixed.

#### Solution
Open up `/etc/exports` and remove the line associated with the removed directory. Then restart the NFS process:

```bash
sudo nfsd start
```

*This will prompt you for your administrative password.*

## Parent Directories & Subdirectories
NFS can't mount inside of a mounted directory so a parent directory and one of its subdirectories can't both exist in your exports config file. The most common cause of this is running `mako push` in the wrong context (in the parent directory rather than the subdirectory).

#### Solution
To fix this issue, open up `/etc/exports` and choose the correct directory to mount and remove the other.
