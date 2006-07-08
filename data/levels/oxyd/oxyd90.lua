-- Oxyd 90, a OxydClone for Enigma
-- Copyright (C) 2005/2006 Raoul Bourquin
-- Licensed under GPL v2.0 or above 

-- GENERAL --
levelw = 20
levelh = 13

create_world(levelw, levelh)

enigma.SlopeForce=18

fill_floor("fl-abyss")

function renderLine( line, pattern)
	for i=1, strlen(pattern) do
		local c = strsub( pattern, i, i)
  		if c=="x" then
			set_item("it-magnet-on",i-1,line)
                elseif c=="o" then
                   set_item("it-hollow",i-1,line)
		   set_floor("fl-gray",i-1,line)

                elseif c=="a" then
                   set_floor("fl-gradient6",i-1,line)
                elseif c=="b" then
                   set_floor("fl-gradient8",i-1,line)
                elseif c=="c" then
                   set_floor("fl-gradient7",i-1,line)
                elseif c=="d" then
                   set_floor("fl-gradient5",i-1,line)

                elseif c=="e" then
                   set_floor("fl-gradient1",i-1,line)
                elseif c=="f" then
                   set_floor("fl-gradient2",i-1,line)

                elseif c=="g" then
                   set_floor("fl-gradient3",i-1,line)
                elseif c=="h" then
                   set_floor("fl-gradient4",i-1,line)

                elseif c=="i" then
                   set_floor("fl-gradient10",i-1,line)
                elseif c=="j" then
                   set_floor("fl-gradient9",i-1,line)
                elseif c=="k" then
                   set_floor("fl-gradient11",i-1,line)
                elseif c=="l" then
                   set_floor("fl-gradient12",i-1,line)
		end
	end	
end

renderLine(00 , "                    ")
renderLine(01 , "                    ")
renderLine(02 , " da deeeeeeea dea x ")
renderLine(03 , " gh golffffikejokea ")
renderLine(04 , " gh cih    glffffih ")
renderLine(05 , " gka gkeea gh    gh ")
renderLine(06 , " goh cfffb gh da gh ")
renderLine(07 , " cih      xgh gh gh ")
renderLine(08 , " xgkeeeeeeejh gh gh ")
renderLine(09 , "  glfffiolffb gkejh ")
renderLine(10 , "  cb   cfb    cfffb ")
renderLine(11 , "                    ")
renderLine(12 , "                    ")

-- Special
set_actor("ac-whiteball-small", 2,3, {player=0})
set_actor("ac-whiteball-small", 3,10, {player=0}) 
set_actor("ac-whiteball-small", 9,6, {player=0})
set_actor("ac-whiteball-small", 15,7, {player=0}) 
