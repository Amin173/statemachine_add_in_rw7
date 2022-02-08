# Install.cmd script for Add-In StateMachine
echo -text "Installing StateMachine RW7 Add-In" -elog

# Define environment variable for the add-in product directory
setenv -name STATEMACHINE -value $BOOTPATH

# Register the add-in to the product directory
register -type option -description StateMachine -path $BOOTPATH

# Load configuration files
config -filename $BOOTPATH/config/StateMachine_eio.cfg -domain EIO
config -filename $BOOTPATH/config/StateMachine_sio.cfg -domain SIO
config -filename $BOOTPATH/config/StateMachine_mmc.cfg -domain MMC
config -filename $BOOTPATH/config/StateMachine_moc.cfg -domain MOC
config -filename $BOOTPATH/config/StateMachine_sys.cfg -domain SYS
