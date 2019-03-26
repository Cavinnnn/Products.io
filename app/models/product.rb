class Product < ApplicationRecord
    belongs_to :orders, optional: true

    def self.search(search)
        if search
            where(["name LIKE ?","%#(search)%"])
        else
            all
        end
    end
end
