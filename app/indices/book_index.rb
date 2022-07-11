ThinkingSphinx::Index.define :book, :with => :real_time do
  # fields
  indexes title, :sortable => true
  indexes cover

  # attributes
  has author_id, :type => :integer
  has created_at, :type => :timestamp
end
