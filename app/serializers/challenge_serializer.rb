class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :stepOne, :stepTwo, :stepThree, :stepFour, :users
end
