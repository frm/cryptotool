set s to seconds of (current date)
set value to do shell script "sh ~/.cache/cryptotool/coinmarketcap bitcoin"
set symbol to do shell script "echo " & value & " | cut -d ':' -f 1"
set usd to do shell script "echo " & value & " | cut -d ':' -f 2"
set eur to do shell script "echo " & value & " | cut -d ':' -f 3"
set change to do shell script "echo " & value & " | cut -d ':' -f 4"



if s mod 9 < 3 then
  # return symbol & " $" & usd
  return "$" & usd
end if

if s mod 9 < 6 then
  # return symbol & " €" & eur
  return "€" & eur
end if

# return symbol & " " & change & "%"
return change & "%"
