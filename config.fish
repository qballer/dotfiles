 alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
 
 function gvm
  bass source ~/.gvm/scripts/gvm ';' gvm $argv
end
set -gx CTAKES_HOME /home/qballer/installs/apache-ctakes-4.0.0
export UIMA_HOME=~/tmp/apache-uima-as-2.9.0 # you'll want to store this in your .bashrc as well
export UIMA_CLASSPATH=/home/qballer/installs/apache-ctakes-4.0.0/lib 
