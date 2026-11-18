# Read live logs for Portal building
journalctl -f TIER=@build APP=portal

# Read live logs for all deliver services
journalctl -o with-unit -fu tao-ce.deliver\*