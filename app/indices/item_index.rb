ThinkingSphinx::Index.define :item, :with => :real_time do
  # fields
  indexes title, :sortable => true
  indexes cover
  indexes author_names, :as => :author_names

  # attributes
  has type, :type => :string
  has created_at, :type => :timestamp
end
