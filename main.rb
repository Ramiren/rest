puts "Wieviele EA/IVP sind zu rüsten bei entsprechender Menge an EA/IVP pro UMK?"
puts
print "Anzahl zu rüstende EA/IVP: "
divident = Integer(gets.chomp)
print "EA/IVP pro UMK: "
divisor = Integer(gets.chomp)
quotient = divident / divisor
rest = divident % divisor
puts
puts "#{quotient} UMKs, #{rest} EA/IVP"
