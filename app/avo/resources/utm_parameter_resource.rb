class UtmParameterResource < Avo::BaseResource
  self.title = :id
  self.includes = []

  field :id, as: :id
  field :medium, as: :belongs_to
  field :utm_source, as: :text
  field :utm_campaign, as: :text
  field :utm_medium, as: :text
end
