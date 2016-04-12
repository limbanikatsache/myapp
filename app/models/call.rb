class Call < ActiveRecord::Base
	belongs_to :contact , foreign_key: "number"
end
