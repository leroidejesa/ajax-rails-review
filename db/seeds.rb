# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# admin
User.create(username: "admin", email: "admin@admin.com", password: "11111111", admin: true)

# sample skills
Skill.create(name: "JavaScript", description: "'It is a very good height indeed!' said the Caterpillar angrily, rearing itself upright as it spoke (it was exactly three inches high).
'But I'm not used to it!' pleaded poor Alice in a piteous tone. And she thought of herself, 'I wish the creatures wouldn't be so easily offended!'", svg_url: "http://cursohtml5js.com/js.png")
Skill.create(name: "Ruby", description: "'It is a very good height indeed!' said the Caterpillar angrily, rearing itself upright as it spoke (it was exactly three inches high).
'But I'm not used to it!' pleaded poor Alice in a piteous tone. And she thought of herself, 'I wish the creatures wouldn't be so easily offended!'", svg_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png")
Skill.create(name: "Ember", description: "'It is a very good height indeed!' said the Caterpillar angrily, rearing itself upright as it spoke (it was exactly three inches high).
'But I'm not used to it!' pleaded poor Alice in a piteous tone. And she thought of herself, 'I wish the creatures wouldn't be so easily offended!'", svg_url: "http://carefullycrafted.net/images/Ember.js_Logo_and_Mascot.png")
Skill.create(name: "Ruby on Rails", description: "'It is a very good height indeed!' said the Caterpillar angrily, rearing itself upright as it spoke (it was exactly three inches high).
'But I'm not used to it!' pleaded poor Alice in a piteous tone. And she thought of herself, 'I wish the creatures wouldn't be so easily offended!'", svg_url: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png")

#sample posts

Post.create(title: "The Elusive 'Perfect' Cheeseburger", content: "Dinah my dear! I wish you were down here with me! There are no  mice in the air, I'm afraid, but you might catch a bat, and that's very  like a mouse, you know. But do cats eat bats, I wonder?' And here Alice  began to get rather sleepy, and went on saying to herself, in a dreamy  sort of way, 'Do cats eat bats? Do cats eat bats?' and sometimes, 'Do  bats eat cats?' for, you see, as she couldn't answer either question,  it didn't much matter which way she put it. She felt that she was dozing  off, and had just begun to dream that she was walking hand in hand with  Dinah, and saying to her very earnestly, 'Now, Dinah, tell me the truth:  did you ever eat a bat?'")
Post.create(title: "Walking Fuels Creativity, New Study Finds", content: "'Tis so,' said the Duchess: 'and the moral of that is'Oh, 'tis love,  'tis love, that makes the world go round!' 'Somebody said,' Alice whispered, 'that it's done by everybody minding  their own business!' 'Ah, well! It means much the same thing,' said the Duchess, digging her  sharp little chin into Alice's shoulder as she added, 'and the moral  of THAT is'Take care of the sense, and the sounds will take care of  themselves.' 'How fond she is of finding morals in things!' Alice thought to herself.")
Post.create(title: "Thoughts on New 'Steve Jobs' Trailer", content: "'HE might bite,' Alice cautiously replied, not feeling at all anxious to  have the experiment tried. 'Very true,' said the Duchess: 'flamingoes and mustard both bite. And  the moral of that is 'Birds of a feather flock together.' 'Only mustard isn't a bird,' Alice remarked.")
