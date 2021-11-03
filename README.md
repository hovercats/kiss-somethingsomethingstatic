# Kiss-somethingsomethingstatic
---

An experimental KISS repository with goal of providing a fully working
statically linked enviroment.
All packages in this repo *should* build statically. (This is however not always
the case, please refer to issues on more info on this.)
We also aim to use alternative more minimalistic tools, whenever such options
are viable, and not without too much hassles.

#### Overview
---

Seeing as this is a highly experimental repo, it may not be adviceable to use
this as your main repo, as its lacking alot of stuff, unless your needs are
particurarly small. 
We have a working GUI, with Velox, stolen from Oasislinux. However, I havent for
some reason been able to build it statically (ironically). See issues for more
info on this, aswell as other issues that needs to be resolved.

We have no mesa, because Velox does not need it. I will also try to keep it that
way for now. However, if you want/need mesa, you are on your own.

Currently, `musl` builds `libc.so`, due to some issues, and for compability reasons.
Once said issues are considered resolved, `musl` will no longer build `libc.so`,
and its from then up to the user to decide wether you need/want `libc.so` or not.
Having a `libc.so` will give you the benefit of compability for shared libs.

If a package you require is missing, you are initially urged to package them
yourself, however, theres nothing stopping you from creating an issue/PR, and we
might add it to the repo.
However, we wish to keep the repository small, so the work of maintaining it,
wont be too much work.

####Converting
---

Converting to a static system, is rather trivial, if things are configured
correctly, aswell as vital parts are not built in the wrong order.
If things are built in the wrong order, other packages will probably break,
due to mising .so files.
You can safely build things that have no reverse dependencies, i.e your WM.
Now, for building things in the right order, youd have to build things in
reverse order of regular building. 
Lets have a few examples:
  
  - If you build curl statically, git will break
    - because git depends on libcurl.so
    - building git first, then curl, will however work.
  - for gcc, building binutils first, will break gcc.
    - same applies as above; gcc first, -> binutils -> $deps

Its also good to have prebuilt binaries backed up, aswell as a untared tarball
available, to save your ass **when** you break your system.
