class LessonSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :date, :start_time, :end_time, :users
  end
  