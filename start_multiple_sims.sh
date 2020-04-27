#!/bin/bash
for d in */ ; do
    echo "Working on $d"
	(cd $d/code; sh compile_snowmodel.script; cd ..; time snowmodel &)
done

