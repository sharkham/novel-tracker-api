# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marysue = User.create(name: "Mary Sue", username: "marysue1", password: "password")
malreynolds = User.create(name: "Mal Reynolds", username: "serenity1", password: "password")
cat = User.create(name: "Meow meow", username: "floof", password: "password")

novel1 = marysue.novels.build(title: "Title", summary: "This is a novel summary", plan: "November Warrior", goal: 30000)
marysue.save

novel2 = malreynolds.novels.build(title: "Firefly", summary: "Can't take the sky from me", plan: "November Warrior", goal: 50000)
malreynolds.save

novel3 = cat.novels.build(title: "Catnip", summary: "I like it.", plan: "November Warrior", goal: 19000)
cat.save


Badgetype.create(name: "Starting to get started", description: "updated spreadsheet", emoji: "🎉")
Badgetype.create(name: "Starry Night", description: "night scene", emoji: "🌉")
Badgetype.create(name: "Here comes the sun!", description: "morning scene", emoji: "🌅")
Badgetype.create(name: "On fire", description: "5,000 words in a single session", emoji: "🔥")
Badgetype.create(name: "Let it Snow", description: "seriously cold weather scene", emoji: "☃️")
Badgetype.create(name: "First Star on the Left", description: "space travel", emoji: "💫")
Badgetype.create(name: "We Heart Hearts", description: "romantic scene", emoji: "💞")
Badgetype.create(name: "What's that smell?", description: "use scent in story", emoji: "👃")
Badgetype.create(name: "Everybody Dance Now", description: "dancing scene", emoji: "💃")
Badgetype.create(name: "What you need to know is", description: "Expertly dropped info", emoji: "💁")
Badgetype.create(name: "Under Construction", description: "revised 1,000 in a single session", emoji: "👷")
Badgetype.create(name: "It's a ghost!", description: "included the supernatural", emoji: "👻")
Badgetype.create(name: "Pirates", description: "included a sea-faring scene", emoji: "☠️")
Badgetype.create(name: "Japanese Goblin", description: "included non-Western mythology", emoji: "👺")
Badgetype.create(name: "Everyone's not always healthy", description: "included an unwell character", emoji: "😷")
Badgetype.create(name: "Persevered", description: "kept going when wanting to quit", emoji: "😣")
Badgetype.create(name: "500 words in a single session", emoji: "😥")
Badgetype.create(name: "1000 words in a single session", emoji: "😉")
Badgetype.create(name: "1500 words in a single session", emoji: "😏")
Badgetype.create(name: "2000 words in a single session", emoji: "😋")
Badgetype.create(name: "2500 words in a single session", emoji: "😪")
Badgetype.create(name: "3000 words in a single session", emoji: "😃")
Badgetype.create(name: "3500 words in a single session", emoji: "😄")
Badgetype.create(name: "4000 words in a single session", emoji: "😆")
Badgetype.create(name: "4500 words in a single session", emoji: "😎")
Badgetype.create(name: "Plot Twist!", description: "not sure where the story is going next", emoji: "😶")
Badgetype.create(name: "Hold on tight", description: "high suspense scene", emoji: "🎢")
Badgetype.create(name: "Myth and Legend", description: "include a fantasy creature", emoji: "🐲")
Badgetype.create(name: "It's brilliant!", description: "loving your novel so much today", emoji: "😍")
Badgetype.create(name: "Bon Appetite!", description: "a scene with a meal", emoji: "🍗")
Badgetype.create(name: "It's tough sometimes", description: "motivated yourself through bribery", emoji: "🍫")
Badgetype.create(name: "The Past", description: "add ancient history to your novel", emoji: "🏰")
Badgetype.create(name: "What's out there?", description: "reference to the greater universe", emoji: "🌌")
Badgetype.create(name: "May Meta Badge: Weeping the Salty Tears", description: "Sign up and plan to plan", emoji: "😭")
Badgetype.create(name: "June Meta Badge: Taking care of business", description: "Wrap up other projects", emoji: "🔪")
Badgetype.create(name: "July Meta Badge: Ranged Attack", description: "Have a plan for your time/projects", emoji: "🏹")
Badgetype.create(name: "August Meta Badge: Bullseye!", description: "July's plan still works", emoji: "🎯")
Badgetype.create(name: "September Meta Badge: Who are these people?", description: "Character work", emoji: "😕")
Badgetype.create(name: "October Meta Badge: What is this place?", description: "Setting work", emoji: "🗺")
Badgetype.create(name: "November Meta Badge: What does it mean?", description: "Theme work", emoji: "🐍")
Badgetype.create(name: "December Meta Badge: Get 'er done!", description: "Wrap something up on a deadline", emoji: "⛳")
