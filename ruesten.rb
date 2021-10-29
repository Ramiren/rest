def divident_ruesten
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

def divisor_ruesten
  print "EA/IVP pro UMK: "
  begin
  divisor = Integer(gets.chomp)
  if divisor == 0
    puts "Sehr schlechte Idee"
    puts
    main
  end
  rescue
    print "Nur Zahlen, bitte. EA/IVP pro UMK: "
    retry
  end
  divisor
end

def berechnung (divident, divisor) 
  return divident / divisor, divident % divisor
end

def ausgabe_ruesten (quotient_rest) 
  quotient = quotient_rest.at(0)
  rest = quotient_rest.at(1)
  if rest == 0
    puts "#{quotient} UMK"
    elsif quotient == 0
    puts "#{rest} EA/IVP"
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

def main_ruesten
  puts
  ausgabe_ruesten(berechnung(divident_ruesten,divisor_ruesten))
  abfrage
end
 

