Factory.sequence :slug do |n|
  "SLUG-#{n}"
end

Factory.define :project, :class => 'project' do |p|
  p.slug {Factory.next :slug}
  p.name {Faker::Company.catch_phrase}
  p.description {Faker::Company.catch_phrase}
  end
