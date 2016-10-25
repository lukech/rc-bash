# rc-bash
Execute Linux commands on a cluster/list of remote nodes through SSH. 


Usage: rc.sh [-h] [-f filename] -c command

   -h, show help text
   -f, set the file which contains the node list
  
  
Example: 
$ rc.sh -f node_list.txt -c uptime
