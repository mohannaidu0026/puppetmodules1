class xyz {
     
     $course="devops" 
     notify { "game is ${game}":
          }
  notify {"The course local variable is  $course" : }
    
     package { ['telnet','curl']:
       ensure => present,
}
  notify {" Course is ${xyz::abc::course} " : 
   }

 }
