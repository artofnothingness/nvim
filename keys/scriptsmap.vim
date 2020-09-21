map <localleader>rm :!python3 ~/.config/nvim/scripts/ros-compile-commands-merge.py<CR>
map <localleader>rb :!catkin build 
map <localleader>rc :!catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'<CR>

