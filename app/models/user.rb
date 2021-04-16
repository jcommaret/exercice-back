class User < ApplicationRecord
    has_many :contracts
    accepts_nested_attributes_for :contracts
    attr_accessor :contracts_id
end