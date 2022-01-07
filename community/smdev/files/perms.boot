#!/bin/sh -e

chown root:video /dev/dri/*
chown root:audio /dev/snd/*
chown root:input /dev/input/*

chmod 660 /dev/dri/* /dev/snd/* /dev/input/* 

# For webcams. Uncomment if you need/want it.
#chown root:video /dev/video/*
#chmod 660 /dev/video/*
