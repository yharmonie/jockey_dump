class RaceCountJob < ActiveRecord::Base
    STATUS = { complete: "Complete", pending: "Pending", failed: "Failed" }
    
    def full_url 
      return Jockey.url_root + '/' + self.url
    end
end