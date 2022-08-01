Thoughts; hard link orkistartion
* hardlink orkistartion 
    if not possible by using images, use Docker like syntax to describe content of source,
    what is readable and writeable, and where to create this clones.
    i think we could use user permissions, by simply saying that the admin does not own the path to the image,
    then admin can read, and link from, but not edit the file.
    * then you can have a process on the side of the imageOwner talking with servers regarding git update or downloading 
    * Vortex Source could be modified to do this.
    * the difference between my needs and what vortex can do.
    ** any source, 
    *** preferable a remote source, but local could be taken and stored
    *** git integration for viewing changes.
    *** lock sources, do not allow tampering after deployment, but do not monitor files stored arround or inside deployed struture-
    *** ask what input source is, if it is atomic, dynamic, in need of archiving.
    *** ask how it should be deployed, or choose template for silent processing.
    *** svn or other delta compared version controll rather than git... 
    *** with designdesision made that deployed and input should be tamperproof we don't need to resolve changes from outside.
    *** program should itself decide wheather how to store orkistrated sources.
    *** this could be say as tar, as blobs for download caching, or as folder structure and assets physically avialable on hdd.
    *** oneDrive like Offline/online aproach to files aviability, it's ok to give io wait while remote call is being done.
    *** you could in theory just dump any data of interest, say playlists, then tell it to find source somewhere, and make it avialable elsewhere.
    **** would be very intersting if this could be a syntic filesystem broker, well aslong as it write protected.
    *** two services, a backend update server, and a front end update server, the front end is the one forcing update when backend server notifies of update.
    *** input+(orkistration manifest; update frequence (ifNeeded), overriding delivery system such as wget etc, how to treat local copy, agressivly cached or conservative.)
    *** program is not a storage of files, but a storage of sources of interest and orkistartion manifests, the manifests could themself be fetched and curated elsewhere just like docker.
    * vortexOS... imagine it running for any kind of conent deployment.
