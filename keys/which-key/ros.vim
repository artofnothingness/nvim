let g:which_key_map_ll.R = {
      \ 'name' : '+ros' ,
      \ 'b' : [':!catkin build'                          , 'build'],
      \ 'm' : [':!python3 /home/alex/.config/nvim/plug-data/scripts/ros-compile-commands-merge.py' ,'merge compile commands'],
      \ 'c' : [":!catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'" ,'set cmake flags'],
      \}
