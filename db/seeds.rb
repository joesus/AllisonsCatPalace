JSON.parse(open("#{Rails.root}/db/seeds/kittens.json").read).each do |kitten|
  kitten = Kitten.new(kitten)
  kitten.id = kitten['id']
  kitten.save!
end