### 2019-11 Start Multiple Simulations Scripts
---
---
#### Written by Ryan Crumley, 2019; ryanlcrumley@gmail.com
#### Shell scripting used on Linux servers to run SnowModel
---
---
**start_multiple_sims.sh**

The primary script for starting multiple SnowModel simulations.
* The script seaches in the subsequent directories for the code/ directory and then runs the compile snowmodel script.
* Next it backs out of that folder using 'cd'.
* Then it runs the snowmodel executable and switches to the next directory. 

The way its written, the script needs to be in the same directory system as multiple snowmodel folders, as indicated below. You can change the */ to make it function with a different directory system structure. 

For example, using the directory system below, it will search each directory with the name snowmodel_sim# and run all of the commands on line 4 of the script. 

my_dir/snowmodel_sim1/sm_folder_struct(including code/,met/,outputs/, snowmodel.par,etc.)
my_dir/snowmodel_sim2/sm_folder_struct(including code/,met/,outputs/, snowmodel.par,etc.)
my_dir/snowmodel_sim3/sm_folder_struct(including code/,met/,outputs/, snowmodel.par,etc.)
my_dir/snowmodel_sim4/sm_folder_struct(including code/,met/,outputs/, snowmodel.par,etc.)
my_dir/start_multiple_sims.sh

---
---
**starter.sh**

This script searches subsequent directories for the start_multiple_sims.sh script and then runs it.

* I previously used this to start 10's of runs at the same time.
* Its important to be careful with this script because you can overload the server if you start more snowmodel simulations than the server has cores/processing units. 

* Check the number of cores/processing units on a Linux server by using this command:

```
$ nproc --all
```
