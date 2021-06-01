open_project sobel
set_top sobel_kernel
add_files sobel.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 10 -name default
csynth_design