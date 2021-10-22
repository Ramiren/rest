def divident
  puts "Wieviele EA/IVP sind zu rüsten bei entsprechender Menge an EA/IVP pro UMK?"
  puts
  print "Anzahl zu rüstende EA/IVP: "
  begin
  divident = Integer(gets.chomp)
  rescue
    print "Nur Zahlen, bitte. Anzahl zu rüstende EA/IVP: "
    retry
  end
  divident
end

def divisor
  print "EA/IVP pro UMK: "
  begin
  divisor = Integer(gets.chomp)
  rescue
    print "Nur Zahlen, bitte. EA/IVP pro UMK: "
    retry
  end
  divisor
end

def berechnung 
  divident_divisor = divident, divisor
  quotient = divident_divisor[0] / divident_divisor[1]
  rest = divident_divisor[0] % divident_divisor[1]
  puts
  if rest == 0
    puts "#{quotient} UMK"
  else
  puts "#{quotient} UMK, #{rest} EA/IVP"
  end
  abfrage
end

def abfrage
  puts
  print "Nochmals? (j/n) "
  eingabe = gets.chomp
  eingabe.downcase!
  if eingabe == "n"
    exit
  else 
    puts
    main
  end
end


def main
berechnung  
abfrage
end
 
main
