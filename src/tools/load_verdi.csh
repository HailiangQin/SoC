#!/usr/bin/csh

set debug_mode = 0

set arg_num  = $#argv
if ($debug_mode != 0 ) then 
     echo "DEBUG: argv_num is $arg_num\n"
endif

if ($arg_num == 2) then
    set config = $argv[1]
    set suite  = $argv[2]
    set curr_path = `pwd`
    cd $OUT_TREE/$PLATFORM/$PROJECT/config/$config/compile/$suite
    echo `pwd`
    if (-f bin/run_sim_bin.daidir/simv.kdb) then
        `which verdi` -f bin/run_sim_bin.daidir/simv.kdb &
        cd $curr_path
    else
        echo "\e[1;31m Warning: not find simv.kdb under directory: $OUT_TREE/$PLATFORM/$PROJECT/config/$config/compile/$suite/bin/run_sim_bin.daidir/ . Exit... \e[0m\n"
        exit 1
    endif
else
    echo "\e[1;31m Warning: You must specify config and suite. Exit... \e[0m\n"
    exit 1
endif

