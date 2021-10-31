# Kiss-somethingsomethingstatic
---

An experimental KISS repository with goal of providing a fully working
statically linked enviroment. All packages in this repo is built statically (Im
lying here. this is the goal, but its not currently true. See issues for more
info about this.).
We also aim to use alternative more minimalistic tools, whenever such options
are viable, and not without too much hassles.


####Overview
---

This is a highly experimental repo, and should be treated as such. It should
therefor not be considered a viable option for daily use. 
Unless your needs are so small it does not exceed the useage of TTY that is.


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
    - same applies as above; gcc first, -> binutils -> ...
