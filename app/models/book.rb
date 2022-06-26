class Book < Item
  enum cover: {
    hard: 1,
    soft: 2
  }
end
