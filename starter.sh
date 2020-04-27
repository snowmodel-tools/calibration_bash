#!/bin/bash
for d in */ ; do
	echo "Working on $d"
		(cd $d/; sh start_multiple_sims.sh $)
done
