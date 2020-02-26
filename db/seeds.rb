User.create!([
  {name: "Joe Cool", email: "joe@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Suzy Q", email: "sue@gmail.com", password: "password", password_confirmation: "password"}
])
Recipe.create!([
  {title: "Fava Bean side dish", ingredients: "ice, tap water, 2 lbs fresh fava beans in the pod, 1 tablespoon butter, 1 teaspoon olive oil, 2 garlic cloves", directions: "boil 4 cups of water, add salt, place fava beans in the boiling water for 5 min, remove fava beans and place in ice water, add seasoning to taste", image_url: "http://bijouxs.com/wp-content/uploads/2011/05/Favabordercropsmall.jpg", prep_time: 125, user_id: 2},
  {title: "Cookies", ingredients: "cookie mix, milk, eggs", directions: "pour mix into bowl, add milk and eggs, stir well, bake", image_url: "http://1.bp.blogspot.com/-w-i7-dRn_V0/TeZP9aAxPBI/AAAAAAAAAR4/8E_-JCJlEmQ/s1600/Apri2011+055pwm.jpg", prep_time: 480, user_id: 1},
  {title: "Egg", ingredients: "chicken, egg", directions: "squeeze chicken", image_url: "https://boost-rankedboost.netdna-ssl.com/wp-content/uploads/2016/07/Pokemon-Go-Egg.png", prep_time: 4, user_id: 1},
  {title: "Big Mac", ingredients: "two all beef paddies, lettuce, onions, pickles, cheese, special sauce, seaseme bun", directions: "drive to Mcdonald's, order burger from fiberglass clown, pull up to the window, exchange burger for money", image_url: "http://www.dreadcentral.com/wp-content/uploads/2017/03/mactonightbanner.jpg", prep_time: 5, user_id: 2},
  {title: "Lasagna", ingredients: "noodles, tomato paste, meat, onions, garlic, other stuff", directions: "layer noodles, add sauce, layer noodles, add meat, layer noodles, add onions, layer noodles, add other stuff, finish with a layer of noodles", image_url: "https://media1.tenor.com/images/93ecc4025061be714f5c1861eb3c2406/tenor.gif?itemid=3571569", prep_time: 60, user_id: 1},
  {title: "Hand Sandwich", ingredients: "left hand, right hand", directions: "put your hands together, Wisconsin!", image_url: "http://blog.bekahbrunstetter.com/wp-content/uploads/2013/03/hand-sandwich.jpg", prep_time: 1, user_id: 1},
  {title: "Eggs Benedict", ingredients: "ham, biscuit, holdays sause, candy canes", directions: "don't go to ihop, during holidays", image_url: nil, prep_time: 25, user_id: 1},
  {title: "spam", ingredients: "can, key, meat", directions: "twist key, open can, enjoy", image_url: "https://www.spam.com/images/5/f/5/5f57337cd256de4e1ad3bb9d1c8409e1c1ec8bc2/spam-classic.png", prep_time: 14, user_id: 2},
  {title: "Maple Simple Syr", ingredients: "tree, tap", directions: "tap the sap, collect bucket", image_url: "https://cdn.shopify.com/s/files/1/0262/3940/2077/products/macs-maple-syrup-glass-leaf-bottle-bag-3_1200x1200.jpg?v=1565371649", prep_time: 360, user_id: 2}
])
