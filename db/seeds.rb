# Seeding the blorgh_articles table with sample data

BlorghArticle.create!(
  [
    { title: 'First Article', text: 'This is the text of the first article.' },
    { title: 'Second Article', text: 'This is the text of the second article.' },
    { title: 'Third Article', text: 'This is the text of the third article.' }
  ]
)

puts 'Seeding completed!'
