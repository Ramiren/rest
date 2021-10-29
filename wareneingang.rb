require_relative 'ruesten'  

def divident_wareneingang
  puts "Wieviele Einheiten insgesamt"
  puts
  print "Einheiten insgesamt: "
  begin
  divident = Integer(gets.chomp)
  rescue
    print "Nur Zahlen, bitte. Einheiten insgesamt: "
    retry
  end
  divident
end

def divisor_wareneingang
  print "Einheiten pro Palette: "
  begin
  divisor = Integer(gets.chomp)
  if divisor == 0
    puts "Sehr schlechte Idee"
    puts
    main
  end
  rescue
    print "Einheiten pro Palette:: "
    retry
  end
  divisor
end

def ausgabe_wareneingang (quotient_rest) 
  quotient = quotient_rest.at(0)
  rest = quotient_rest.at(1)
  if rest == 0
    puts "#{quotient} UMK"
    elsif quotient == 0
    puts "#{rest} Einheiten"
    else
    puts "#{quotient} Paletten, #{rest} Einheiten"
  end
  abfrage
end

def main_wareneingang
  puts
  ausgabe_wareneingang(berechnung(divident_wareneingang,divisor_wareneingang))
  abfrage
end
 

