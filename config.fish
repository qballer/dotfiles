 alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
 
 function gvm
  bass source ~/.gvm/scripts/gvm ';' gvm $argv
end
