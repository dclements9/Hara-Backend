class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :age, :rank
end
