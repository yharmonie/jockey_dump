class ResultJob < ActiveRecord::Base    
    STATUS = { complete: "Complete", pending: "Pending", failed: "Failed" }
    
    def full_url 
      return self.url
    end
end
