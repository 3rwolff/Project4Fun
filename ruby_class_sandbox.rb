#################   NOTES    #################
#Instance var: @var vs. Local var: var
#
#
##############################################

#######
# HUMAN
#######
class Human
    
    #INITIALIZER
    def initialize
       puts "Creating a new Human; object ID: #{self.object_id}." 
    end
    
   
    #SET_FirstName
    def FirstName=( newName )
       check_name( newName ) ? @FirstName =  newName : abort( "Bad input, can't set  FirstName to \"#{newName}\"." )
    end
    
    
    #SET_LastName
    def LastName=( newName )
        check_name( newName ) ? @LastName = newName : abort( "Bad input, can't set LastName to \"#{LastName}.")
    end
    
    #SET_AGE
    def Age=( newAge )
        ( newAge ).is_a?( Numeric ) ? @Age = newAge : abort( "Bad input, can't set age to \"#{newAge}\".")
    end
    
    #GET_FirstName
    def FirstName 
        @FirstName 
    end
    
    #GET_LastName
    def LastName
        @LastName
    end
    
    #GET_Age
    def Age
        @Age
    end
    
    #Greeting
    def Greeting
        puts "Hello, how are you."
    end
    
    #Info
    def Info
        puts "The person's name is #{@FirstName} #{@LastName} and he is #{@Age} years old."
    end
    
    #check_name
    def check_name(input)
        return input.is_a?(String) ? true : false
        puts "Name can't be Numeric."
    end
    
end #END Human Class

##############
# FRENCH HUMAN
##############
class FrenchHuman < Human
    
    def Greeting
        puts "Salut comment allez-vous."
    end
    
    def SpecialTalents
        puts "My special talents are: Making French Fries and painting portraits!"
    end
    
end #END FrenchHuman class

##############
# SKATER HUMAN
##############
class SkaterHuman < Human
    
    def Greeting
        puts "Totally tubular 360 man!"
    end
    
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
            i = i + 1
        end #gear loop
        puts gearString << "."
    end #gearInfo
    
end #END SkaterHuman class

#############################################################
###################  INSTANCE OF CLASSES  ###################
#############################################################
hawk = SkaterHuman.new

hawk.FirstName = "Tony"
hawk.LastName = "Hawk"
hawk.Age = 50
hawk.Greeting
hawk.Info
hawk.GearInfo

puts ""

ricky = FrenchHuman.new

ricky.FirstName = "Ricky"
ricky.LastName = "Fox"
ricky.Age = 29
ricky.Greeting
ricky.Info
ricky.SpecialTalents










###################  JUNK CODE  #####################
#ALTERNATE syntax for setting instance variables
#SET_FirstName
    #def set_FirstName( newName )
    #    check_name( newName ) ? @FirstName = newName : abort( "Method 1: Bad input, can't set name to \"#{newName}\"." )
#end
    




