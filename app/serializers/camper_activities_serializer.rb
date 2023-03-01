class CamperActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  has_one: camper

end
