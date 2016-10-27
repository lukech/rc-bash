# rc-bash
Execute Linux commands on a cluster/list of remote nodes through SSH.   

Usage: rc.sh [-h] -f <filename> -c <command>  
  
  -h, show command usage  
  -f, set the file which contains the node list   
  -c, set the command(s) to be run on the list of nodes  
  
Example:   
$ rc.sh -f node_list.txt -c uptime
