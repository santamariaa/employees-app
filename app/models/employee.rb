class Employee < ActiveRecord::Base
    
    def full_name 
        "#{first_name} #{last_name}"
    end

    def latitude
        
    end

    def longitude
        
    end


end
