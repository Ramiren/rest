require_relative 'ruesten'  
require_relative 'wareneingang'  

def main
puts "Berechnet die Anzahl und den Rest beim Rüsten oder Wareingang"
puts
puts "1 Rüsten"
puts "2 Wareneingang"
print "Was willst du machen: "
eingabe = gets.chomp

case eingabe
  when "1"
main_ruesten
  when "2"
main_wareneingang
  else
exit
end
end

main

