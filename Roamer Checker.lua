--Roamer Checker by Lucas C.

while true do
  --Note: this only works in USA Gold/Silver. Addresses need to bechanged accordingly.
  --Reverse here because of the different endianness between player and legend location
  MyLocation=string.reverse(string.format("%02X",memory.readwordunsigned(0x0000DD2F)))
  legendA=string.format("%02X", memory.readwordunsigned(0x0000DD1C))
  legendB=string.format("%02X", memory.readwordunsigned(0x0000DD23))
  legendC=string.format("%02X", memory.readwordunsigned(0x0000DD2A))

  gui.text(0,10,"Player: "..MyLocation)
  gui.text(0,20,"Legend A: "..legendA)
  gui.text(0,30,"Legend B: "..legendB)
  gui.text(0,40,"Legend C: "..legendC)
   
  if MyLocation == legendA or MyLocation == legendB or MyLocation == legendC then
    gui.text(0,00,"Legend is on this route!", "red")
  end
end
