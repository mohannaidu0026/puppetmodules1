class ifelse
   {
    $pack1='openssh'
    $pack2='ssh'

     if $hostname == 'server1' 
        {
        package {"$pack1":
         ensure=>present,
        }
        }
     else
       { 
        package  {"$pack2":
         ensure=>present,
        }
        }
     file {"/etc/ssh/sshd_config":
        source=>"puppet:///modules/ifelse/sshd_config",
      notify => Service['sshd'],
      }
     service {"sshd":
        ,

}
}
#      {$pack1='openssh'}
#     else 
#     {$pack1='ssh'}
    
       
   



