class MediumResource < Avo::BaseResource
  self.title = :id
  self.includes = [ :utm_parameter ]

  field :id, as: :id
  field :title, as: :text
  field :type, as: :text, hide_on: [ :edit, :new, :index ]
  field :utm_parameter, as: :has_one
end
