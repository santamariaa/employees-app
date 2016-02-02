class Employee < ActiveRecord::Base
    
    def full_name 
        "#{first_name} #{last_name}"
    end

    def latitude
        
    end

    def longitude
        
    end

    def friendly_updated_at
        updated_at.strftime("%b %e, %Y") 
    end 
end
