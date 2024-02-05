#!/bin/bash

cd ../.config

echo "Copying SDDM theme configuration"
cp -r sddm/themes/ /usr/share/sddm/

for f in sddm/global/*
do
	cp "$f" /etc/sddm.conf.d/
done

echo "Copying darkman actions"

for f in darkman/*
do
        cp -r "$f" ../.local/share/
done
