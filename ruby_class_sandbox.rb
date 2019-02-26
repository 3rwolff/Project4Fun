#GearInfo: the skater wears a different combination of gear each inquery
    #he should always be wearing at least one piece of gear
    def GearInfo
        @gearArray = []
        @gearArray[ 0 ] = "a helmet"
        @gearArray[ 1 ] = "knee pads"
        @gearArray[ 2 ] = "elbow pads"
        @gearArray[ 3 ] = "wrist wraps"
        
        gearString = "I wear:" 
        
        i = 0
        gearAlreadyUsed = Array.new
        numGear = rand( 1 .. @gearArray.size )
        puts "Pieces of Gear: #{numGear}"
        numGear.times do
            if (i == numGear - 1 && i != 0) 
                gearString << " and" 
            elsif i != 0
                gearString << ", " 
            end
            
            #save what gear has already been used, we don't want the same piece to appear more than once
            foundGear = false
            while foundGear == false
                tempGear = rand( @gearArray.size )
                if !gearAlreadyUsed.include?( gearAlreadyUsed[ tempGear ] ) 
                    foundGear = true 
                end
            end
            
            gearString << " #{@gearArray[ tempGear ]}"
            gearAlreadyUsed.push( tempGear )
            print gearAlreadyUsed
            i = i + 1
        end #gear loop
        puts gearString << "."
    end #gearInfo
    
    puts GearInfo()
    
    
    
    