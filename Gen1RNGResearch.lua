--Gen 1 researching lua script by Lucas C.
--Note: this script is left here for documentation purposes.
--I later learned more about the entropy and that is not included here.

--There are two random numbers, listed here.
olddvA =memory.readbyteunsigned(0x0000CFF1)
olddvB=memory.readbyteunsigned(0x0000CFF2)
tab="	"

print("Rand1	Rand2	DVA	DVB	Entropy\n")

--Take DVs and random numbers, and print them. Update when DVs change.
while true do
dvA =memory.readbyteunsigned(0x0000CFF1)
dvB=memory.readbyteunsigned(0x0000CFF2)


if dvB ~=  olddvB then
randA=memory.readbyteunsigned(0x0000FFD3)
randB=memory.readbyteunsigned(0x0000FFD4)
entropy=memory.readwordunsigned(0x0000FFF8)
print(string.format("%02X	%02X	%02X	%02X	%02X\n",randA, randB, dvA, dvB,  entropy))
end

olddvA =memory.readbyteunsigned(0x0000CFF1)
olddvB=memory.readbyteunsigned(0x0000CFF2)
  
emu.frameadvance()
end
