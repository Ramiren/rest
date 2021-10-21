def rest
  puts "Wieviele EA/IVP sind zu rüsten bei entsprechender Menge an EA/IVP pro UMK?"
  puts
  print "Anzahl zu rüstende EA/IVP: "
  begin
  divident = Integer(gets.chomp)
  rescue
    print "Nur Zahlen, bitte. Anzahl zu rüstende EA/IVP: "
    retry
  end
  print "EA/IVP pro UMK: "
  begin
  divisor = Integer(gets.chomp)
  rescue
    print "Nur Zahlen, bitte. EA/IVP pro UMK: "
    retry
  end
  quotient = divident / divisor
  rest = divident % divisor
  puts
  if rest == 0
    puts "#{quotient} UMKs"
  else
  puts "#{quotient} UMKs, #{rest} EA/IVP"
  end
  abfrage
end

def abfrage
  puts
  print "Nochmal? (j/n) "
  eingabe = gets.chomp
  eingabe.upcase!

  if eingabe == "N"
    exit
  else 
    puts
    rest
  end
end

rest
abfrage
