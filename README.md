# fanuc_robot_template

This is easy to use FANUC robot template.

PLC starts robot procedure PNS0001, in that procedure we set the robot speed limit, check robot home position and check STOP at the end of cycle flag.
In that procedure we start MAIN function.
PLC sends job number to MAIN function and if there is no job running we start robot job (procedure) with that int number.
It is easy to setup new robot jobs, follow and debug robot program.
