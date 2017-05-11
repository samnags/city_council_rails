class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :district, :party
  has_many :attendances
end

