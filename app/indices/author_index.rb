ThinkingSphinx::Index.define :author, :with => :real_time do
  # fields
  indexes name, :sortable => true

  # attributes
  has created_at, :type => :timestamp
end
