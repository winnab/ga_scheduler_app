* allow a logged in user to delete her own account without an error--delete and kill session simultaneously?


Course.delete_all
User.delete_all
wdi = Course.create(name: "WDI")
gerry = User.create!(first_name: "Gerry", last_name: "Mathe", email: "gerry1@gerry.com", role: "Instructor", password: "test123", password_confirmation: "test123")
gordon = User.create!(first_name: "Gordon", last_name: "MacRae", email: "gordon1@gordon.com", role: "Producer", password: "test123", password_confirmation: "test123")
winna = User.create!(first_name: "Winna", last_name: "Bridgewater", email: "winna1@winna.com", role: "Student", password: "test123", password_confirmation: "test123")

winna = User.create!(first_name: "Winna", last_name: "Bridgewater", email: "winna1@winna.com", role: "Admin", password: "test123", password_confirmation: "test123")

new course

new student

new lead inst first
new lead inst last

new producer first
new producer last





attr_accessible :first_name, :last_name, :email, :role, :password, :password_confirmation
attr_accessible :first_name, :last_name, :email, :role, :password, :password_confirmation
attr_accessible :first_name, :last_name, :email, :role, :password, :password_confirmation





[1] pry(main)> r = Recipe.find 1
  Recipe Load (39.2ms)  SELECT "recipes".* FROM "recipes" WHERE "recipes"."id" = $1 LIMIT 1  [["id", 1]]
=> #<Recipe id: 1, name: "Banana Pancakes", course: "Dessert", cooktime: 10, servingsize: 4, instructions: "Cook in pan", image: "http://hostedmedia.reimanpub.com/TOH/Images/Photos/...", created_at: "2013-10-30 10:13:04", updated_at: "2013-10-30 10:13:04", flagged: nil, user_id: 2>
[2] pry(main)> r.ingredients
  Ingredient Load (1.3ms)  SELECT "ingredients".* FROM "ingredients" INNER JOIN "quantities" ON "ingredients"."id" = "quantities"."ingredient_id" WHERE "quantities"."recipe_id" = 1 ORDER BY quantities.position ASC
=> [#<Ingredient id: 1, name: "Flour", image: "http://3.bp.blogspot.com/_Iel3IXJ_g7A/RzIFHOZyqRI/A...", created_at: "2013-10-30 10:13:05", updated_at: "2013-10-30 10:13:05">,
 #<Ingredient id: 2, name: "Eggs", image: "http://images.elephantjournal.com/wp-content/upload...", created_at: "2013-10-30 10:13:05", updated_at: "2013-10-30 10:13:05">,
 #<Ingredient id: 5, name: "Butter", image: "http://www.cheesemaking.com/images/recipes/35Butter...", created_at: "2013-10-30 10:13:05", updated_at: "2013-10-30 10:13:05">]
[3] pry(main)> r.ingredients.map(&:name)
=> ["Flour", "Eggs", "Butter"]
[4] pry(main)> 
