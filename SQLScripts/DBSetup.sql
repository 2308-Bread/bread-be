-- 2/9/24

CREATE TABLE Breads
(
    BreadId INT IDENTITY(1,1) PRIMARY KEY
    , Name NVARCHAR(50)
    , Recipe NVARCHAR(1000)
    , Description NVARCHAR(1000)
);

CREATE TABLE Users
(
    UserId INT IDENTITY(1,1) PRIMARY KEY
    , Name NVARCHAR(50)
    , Email NVARCHAR(50)
    , Pasword_digest NVARCHAR(50)
);

CREATE TABLE Countries
(
    CountryId INT IDENTITY(1,1) PRIMARY KEY
    , Name NVARCHAR(50)
    , Description NVARCHAR(255)
);

CREATE TABLE CountryBreads
(
    CountryBreadId INT IDENTITY(1,1) PRIMARY KEY
    , CountryId NVARCHAR(10)
    , BreadId NVARCHAR(10)
);

CREATE TABLE UserBreads
(
    UserBreadId INT IDENTITY(1,1) PRIMARY KEY
    , UserId NVARCHAR(10)
    , BreadId NVARCHAR(10)
);


--                 Below are tables for the Seeding of Data






-- INSERT INTO Countries (Name, Description)
-- VALUES
--     ('Scotland', 'Scotland is a country that is part of the United Kingdom, located in the northern part of the island of Great Britain. It is known for its rich history, stunning landscapes, and vibrant cultural heritage.'),
--     ('Japan', 'Japan, is celebrated for its meticulous preparation, diverse flavors, and harmonious blend of tradition and innovation, and is deeply rooted in seasonal ingredients, artistic presentation, and a respect for culinary craftsmanship.'),
--     ('Brazil', 'Pão de queijo is a famous Brazilian cheese bread made with cassava flour and cheese, resulting in a chewy and cheesy delight.'),
--     ('France', 'France is famed for its diverse bread offerings. Each region has its own specialty, contributing to the rich tapestry of French bread.'),
--     ('India', 'Naan and roti are traditional Indian bread varieties. Naan, leavened and often brushed with ghee, is baked in a tandoor. Roti is unleavened and cooked on a griddle. Paratha, a flaky and stuffed bread, is another popular choice.'),
--     ('Italy', 'Italy, is renowned for its rich cultural heritage, historical landmarks, and exquisite art, and as the birthplace of the Renaissance. Famous for its delectable cuisine, including pasta, pizza, and gelato.');

-- INSERT INTO Breads (Name, Recipe, Description)
-- VALUES
--     ('Scotch Broth Bread','Ingredients: 500g strong white flour 10g salt 7g active dry yeast 300ml lamb broth (cooled) Instructions: In a large bowl, combine flour and salt. Dissolve yeast in lamb broth. Add the liquid to the dry ingredients and knead until smooth. Let it rise for 2 hours. Shape the dough and place it in a greased pan. Allow it to rise for another hour. Bake at 400°F (200°C) for 30-35 minutes.','Inspired by traditional Scotch Broth soup, this hearty bread is infused with flavors of lamb, barley, and root vegetables. A rustic and comforting choice.'),
--     ('Highland Oat Bread','Ingredients: 400g wholemeal flour 100g oats 10g salt 15g honey 7g active dry yeast 300ml warm water Instructions: Mix oats, flour, and salt. Dissolve yeast in warm water with honey. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Shape into a loaf, rise for an additional 30 minutes, and bake at 375°F (190°C) for 25-30 minutes.','A Scottish classic, this oat bread combines the nutty flavor of oats with a touch of honey. It is a dense and wholesome bread, perfect for toasting and enjoying with butter or jam.'),
--     ('Cranachan Swirl Bread','Ingredients: 500g strong white flour 10g salt 7g active dry yeast 300ml warm milk 50g honey Filling: Raspberries, honey, toasted oats Instructions: Mix flour and salt. Dissolve yeast in warm milk with honey. Knead the dough, let it rise for 1-2 hours. Roll out the dough, spread with honey, raspberries, and oats. Roll into a swirl, rise for 30 minutes, and bake at 375°F (190°C) for 25-30 minutes.','Inspired by the Scottish dessert Cranachan, this swirl bread is filled with raspberries, honey, and toasted oats. A sweet and fruity treat to brighten your day.'),
--     ('Whisky Barrel Stave Bread','Ingredients: 500g bread flour 10g salt 7g active dry yeast 300ml water Soaked whisky barrel staves (finely chopped) Instructions: Mix flour and salt. Dissolve yeast in warm water. Add chopped whisky barrel staves to the dough, knead, and let it rise for 2 hours. Shape the dough, rise for 30 minutes, and bake at 400°F (200°C) for 30-35 minutes.','Infused with the smoky essence of whisky barrel staves, this unique bread brings a hint of Scotlands whisky-making tradition to the table. A savory and aromatic delight.'),
--     ('Sakura Blossom Buns','Ingredients: 500g all-purpose flour 10g sugar 7g active dry yeast 250ml warm milk Filling: Sakura-flavored cream (whipped cream with sakura essence) Instructions: Mix flour, sugar, and yeast. Add warm milk, knead, and let it rise for 1-2 hours. Roll out the dough, fill with sakura-flavored cream, shape into buns, rise for 30 minutes, and bake at 375°F (190°C) for 20-25 minutes.','Inspired by the beauty of cherry blossoms, these buns are filled with a delicate sakura-flavored cream. A delightful and seasonal Japanese treat.'),
--     ('Matcha Swirl Bread','Ingredients: 400g bread flour 100g sugar 7g active dry yeast 250ml warm milk 2 tbsp matcha powder Instructions: Mix flour, sugar, and yeast. Dissolve matcha powder in warm milk. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Roll out the dough, shape into a swirl, rise for 30 minutes, and bake at 375°F (190°C) for 25-30 minutes.','This swirl bread features layers of matcha-flavored dough, creating a beautiful and flavorful green swirl. A perfect blend of traditional and modern Japanese flavors.'),
--     ('Red Bean Dorayaki Bread','Ingredients: 500g all-purpose flour 10g sugar 7g active dry yeast 250ml warm milk Filling: Sweet red bean paste Instructions: Mix flour, sugar, and yeast. Add warm milk, knead, and let it rise for 1-2 hours. Shape the dough, fill with sweet red bean paste, rise for 30 minutes, and bake at 375°F (190°C) for 20-25 minutes.','Inspired by the popular Japanese sweet dorayaki, this bread is filled with sweet red bean paste. A delightful combination of soft bread and luscious filling.'),
--     ('Yuzu Citrus Roll','Ingredients: 400g bread flour 100g sugar 7g active dry yeast 250ml warm milk Zest and juice of yuzu Instructions: Mix flour, sugar, and yeast. Add yuzu zest and juice to warm milk. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Shape into a roll, rise for 30 minutes, and bake at 375°F (190°C) for 25-30 minutes.','This Japanese-inspired citrus roll is infused with the bright and fragrant flavor of yuzu. A refreshing and tangy bread to enjoy with tea or as a light dessert.'),
--     ('"Pão de Queijo','Ingredients: 500g tapioca flour 250ml milk 125g butter 10g salt 2 eggs 200g grated cheese Instructions: Boil milk with butter and salt. Pour over tapioca flour and mix. Let it cool, then add eggs and cheese. Form small balls and bake at 375°F (190°C) for 15-20 minutes.','Pão de queijo is a famous Brazilian cheese bread made with cassava flour and cheese, resulting in a chewy and cheesy delight.'),
--     ('Beiju','Ingredients: Tapioca flour Water Salt Toppings of choice Instructions: Mix tapioca flour with water and a pinch of salt. Cook the mixture on a hot griddle until it forms a thin, crispy layer. Add your favorite toppings and enjoy!','Beiju is a traditional Brazilian flatbread made from tapioca flour. Its thin, crispy, and versatile, often served with sweet or savory toppings.'),
--     ('Bolo de Milho','Ingredients: 250g cornmeal 250ml milk 2 eggs 100g sugar 50g butter 1 tsp baking powder Instructions: Mix cornmeal, sugar, and baking powder. Add eggs, milk, and melted butter. Bake in a greased pan at 350°F (180°C) for 30-35 minutes.','Bolo de milho, or cornbread, is a popular Brazilian treat. Its sweet, moist, and often enjoyed with a cup of coffee or as a dessert.'),
--     ('Broa','Ingredients: 300g cornmeal 200g wheat flour 250ml milk 100g sugar 50g butter 1 tsp baking powder Instructions: Mix cornmeal, wheat flour, sugar, and baking powder. Add melted butter and milk. Bake in a greased pan at 350°F (180°C) for 25-30 minutes.','Broa is a traditional Brazilian cornbread made with a mix of cornmeal and wheat flour. It has a dense texture and is commonly served with savory dishes.'),
--     ('Baguette','Ingredients: -500g all-purpose flour 10g salt 7g active dry yeast 350ml warm water Instructions: In a bowl, dissolve yeast in warm water and let it sit for 5 minutes until foamy. In a large mixing bowl, combine flour and salt. Make a well in the center and pour in the yeast mixture. Mix until a dough forms, then knead on a floured surface for about 10 minutes until smooth. Place the dough in a lightly oiled bowl, cover with a cloth, and let it rise for 1-2 hours or until doubled in size. Punch down the dough, shape it into a baguette, and place on a baking sheet. Let it rise for another 30 minutes. Preheat the oven to 450°F (230°C). Slash the top of the baguette with a sharp knife and bake for 20-25 minutes until golden brown.','A quintessential French bread, the baguette is characterized by its long, thin shape, crispy golden crust, and soft, airy interior. It is a symbol of French baking and is versatile, perfect for sandwiches or as an accompaniment to meals.'),
--     ('Pain de Campagne','Ingredients: 400g bread flour 100g whole wheat flour 10g salt 300ml warm water 100g active sourdough starter Instructions: In a large bowl, combine bread flour, whole wheat flour, and salt. Mix warm water and sourdough starter, then add to the dry ingredients. Knead the dough for 15-20 minutes until it becomes smooth and elastic. Place the dough in a lightly oiled bowl, cover, and let it rise for 3-4 hours or until doubled in size. Shape the dough into a round loaf, place on a floured surface, and let it rise for an additional 1-2 hours. Preheat the oven to 450°F (230°C). Slash the top of the bread and bake for 30-35 minutes until the crust is golden brown.','Translating to country bread, pain de campagne is a rustic French loaf made with a mix of flours. It has a chewy crust and a slightly tangy flavor, often enhanced by the addition of a natural sourdough starter.'),
--     ('Pain  Poilâne','Ingredients: 500g bread flour 10g salt 300ml warm water 100g active sourdough starter Instructions: Combine bread flour and salt in a large bowl. Mix warm water and sourdough starter, then add to the dry ingredients. Knead the dough for 15-20 minutes until smooth and elastic. Place the dough in a lightly oiled bowl, cover, and let it rise for 4-6 hours or until doubled.','Pain Poilâne is a round, sourdough-style bread with a hearty crust and a distinct wheaty flavor. Its named after the renowned Poilâne bakery in Paris known for its commitment to traditional baking methods.'),
--     ('Pain  Complet','Ingredients: 500g whole wheat flour 10g salt 7g active dry yeast 350ml warm water Instructions: Dissolve yeast in warm water and let it sit for 5 minutes until foamy. In a large bowl, combine whole wheat flour and salt. Make a well and pour in the yeast mixture. Mix until a dough forms, then knead on a floured surface for about 10 minutes until smooth. Place the dough in a lightly oiled bowl, cover, and let it rise for 1-2 hours or until doubled in size. Punch down the dough, shape it into a loaf, and place in a greased pan. Let it rise for another 30 minutes. Preheat the oven to 400°F (200°C). Bake for 25-30 minutes until the bread is golden brown.','Pain complet, or whole wheat bread, is a wholesome and nutty-flavored French bread made with whole wheat flour. It offers a heartier texture and is a nutritious choice.'),
--     ('Naan','Ingredients: 500g all-purpose flour 1 tsp baking powder 1 tsp sugar 1/2 tsp baking soda 250ml yogurt 2 tbsp ghee Water (as needed) Instructions: Mix flour, baking powder, sugar, and baking soda. Add yogurt and ghee, knead into a soft dough, and let it rise for 2 hours. Divide the dough, roll into discs, and bake in a preheated tandoor or oven at 500°F (260°C) for 5-7 minutes.','Naan is a traditional Indian flatbread leavened with yogurt and baked in a tandoor. Its soft, fluffy, and perfect for scooping up delicious curries and dips.'),
--     ('Roti','Ingredients: 500g whole wheat flour Water Salt Ghee (optional) Instructions: Mix whole wheat flour and salt. Add water gradually, knead into a smooth dough. Divide into balls, roll into discs, and cook on a hot griddle until puffed and golden. Brush with ghee if desired.','Roti is a staple unleavened Indian flatbread made with whole wheat flour. Its simple, versatile, and commonly enjoyed with various curries and vegetables.'),
--     ('Paratha','Ingredients: For Dough - 500g whole wheat flour Water Salt For Filling (Aloo Paratha) - Boiled and mashed potatoes Mixed spices (cumin, coriander, chili) Salt Ghee (for frying) Instructions: Mix flour and salt. Knead with water to make a soft dough. For filling, mix mashed potatoes with spices. Roll out dough, add filling, fold, and roll again. Cook on a hot griddle with ghee until golden.','Paratha is a flaky and layered Indian bread often stuffed with spiced potatoes, paneer, or other fillings. Its pan-fried to perfection and enjoyed with chutneys or yogurt.'),
--     ('Bhature','Ingredients: 500g all-purpose flour 250ml yogurt 1 tsp baking powder 1/2 tsp baking soda Salt Ghee (for frying) Instructions: Mix flour, baking powder, baking soda, and salt. Add yogurt, knead into a soft dough, and let it rise for 2 hours. Divide into balls, roll into discs, and deep-fry until puffed and golden.','Bhature is a deep-fried Indian bread often paired with spicy chickpea curry (chhole). Its fluffy, crispy, and a popular choice for festive occasions.'),
--     ('Ciabatta','Ingredients: 500g bread flour 10g salt 7g active dry yeast 350ml warm water Instructions: Mix flour and salt. Dissolve yeast in warm water. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Shape the dough, rise for 30 minutes, and bake at 425°F (220°C) for 20-25 minutes.','Ciabatta is an Italian bread known for its irregular holes, chewy texture, and crisp crust. Its a versatile bread often used for sandwiches or dipping in olive oil.'),
--     ('Focaccia','Ingredients: 500g bread flour 10g salt 7g active dry yeast 350ml warm water Toppings: Olive oil, rosemary, cherry tomatoes Instructions: Mix flour and salt. Dissolve yeast in warm water. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Shape into a pan, press dimples into the dough, drizzle with olive oil, add toppings, and bake at 425°F (220°C) for 20-25 minutes.','Focaccia is a flat Italian bread topped with olive oil, herbs, and sometimes vegetables. It has a soft and airy texture, making it a delightful accompaniment to meals.'),
--     ('Grissini','Ingredients: 500g bread flour 10g salt 7g active dry yeast 250ml warm water Olive oil (for brushing) Toppings: Sesame seeds, poppy seeds Instructions: Mix flour and salt. Dissolve yeast in warm water. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Roll out the dough, cut into thin strips, and bake at 400°F (200°C) for 12-15 minutes.','Grissini are thin and crunchy Italian breadsticks. They are often served as appetizers or alongside antipasti, providing a satisfying crunch with each bite.'),
--     ('Pane Casareccio','Ingredients: 500g bread flour 10g salt 7g active dry yeast 350ml warm water Instructions: Mix flour and salt. Dissolve yeast in warm water. Combine wet and dry ingredients, knead, and let it rise for 1-2 hours. Shape the dough, rise for 30 minutes, and bake at 425°F (220°C) for 25-30 minutes.','Pane Casareccio is a rustic Italian bread with a thick crust and a chewy crumb. It embodies the traditional and simple essence of Italian baking.');

-- INSERT INTO CountryBreads (CountryId, BreadId)
-- VALUES
--     (1,1),
--     (1,2),
--     (1,3),
--     (1,4),
--     (2,5),
--     (2,6),
--     (2,7),
--     (2,8),
--     (3,9),
--     (3,10),
--     (3,11),
--     (3,12),
--     (4,13),
--     (4,14),
--     (4,15),
--     (4,16),
--     (5,17),
--     (5,18),
--     (5,19),
--     (5,20),
--     (6,21),
--     (6,22),
--     (6,23),
--     (6,24);

