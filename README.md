 _  ___           ___                _   _    _                             _   _    _              _        _   _    
| |/ (_)_________/ __| ___ _ __  ___| |_| |_ (_)_ _  __ _ ___ ___ _ __  ___| |_| |_ (_)_ _  __ _ __| |_ __ _| |_(_)__ 
| ' <| (_-<_-<___\__ \/ _ \ '  \/ -_)  _| ' \| | ' \/ _` (_-</ _ \ '  \/ -_)  _| ' \| | ' \/ _` (_-<  _/ _` |  _| / _|
|_|\_\_/__/__/   |___/\___/_|_|_\___|\__|_||_|_|_||_\__, /__/\___/_|_|_\___|\__|_||_|_|_||_\__, /__/\__\__,_|\__|_\__|
                                                    |___/                                  |___/                      
______________________________________________________________________________________________________________________

An experimental KISS repository with goal of providing a fully working
statically linked enviroment.
We also aim to use alternative more minimalistic tools, whenever such options
are viable, and not without too much hassles. 

#### What is this strange repo?
---

As the name and the above text applies, its about static linking.
Static linking is a bit of a niche and you probably either hate or love it.
Everything in this repo *should* build statically, however some exceptions
may exist. (See issues)
Packages is also configured to build statically in the buildscripts, so nothing
needs to be done on your end, just build and be merry on your way with a
statically linked system. Just make sure you build stuff in the correct order.
Else packages will break.

Also; if you happen to want PIE binaries, you should be able to switch from
`-static/--static` to `LDFLAGS="-static-pie -s" CFLAGS="-fPIE"`.
Which will result in a statically linked PIE binary.
I have not thoughroughly tested this myself, but I know it works on some of the packages.
This is also the default flags on [Oasis linux](https://github.com/oaislinux/oasis).


If you happen to like the idea of a statically built system.
You may wish to check out some similar project aswell:

* [Oasis linux](https://github.com/oasislinux/oasis)
* [Sabotage Linux](https://github.com/sabotage-linux/sabotage)
* [Zandra linux](https://zandra.org) (fork of morpheus linux)
