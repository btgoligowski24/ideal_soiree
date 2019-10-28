USE themes_db;

INSERT INTO themes (name, description, createdAt, updatedAt)
VALUES ("Almost Famous", "Embrace freedom, love, and rock & roll", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Alice in Wonderland", "Take a journey down the rabbit hole for a mostly guarenteed good time.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Sex and the City", "OMG BESTIES FOREVERRRR! *SQUEALS AND GROUP HUG*", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Fright Fest", "It'll be one hell of a hauntingly frightening night...", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Winter Wonderland", "Celebrate the season with friends and family", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Cinco de Drinko", "One tequila, two tequila, three tequila, floor.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Prohibition", "Fight for your right to parrrtayyyy!", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("A Night in Paris", "On se voit a paris?", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Impeachment Party", "About damn time.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO themes (name, description, createdAt, updatedAt) 
VALUES ("Redneck Yacht Club", "Featuring an appearance by recently impeached Donald Trump", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Bitterballen Dutch Meatballs", "https://www.themealdb.com/images/media/meals/lhqev81565090111.jpg", 1, 52979, "", "Melt the butter in a skillet or pan. When melted, add the flour little by little and stir into a thick paste. Slowly stir in the stock, making sure the roux absorbs the liquid. Simmer for a couple of minutes on a low heat while you stir in the onion, parsley and the shredded meat. The mixture should thicken and turn into a heavy, thick sauce.\r\n\r\nPour the mixture into a shallow container, cover and refrigerate for several hours, or until the sauce has solidified.\r\n\r\nTake a heaping tablespoon of the cold, thick sauce and quickly roll it into a small ball. Roll lightly through the flour, then the egg and finally the breadcrumbs. Make sure that the egg covers the whole surface of the bitterbal. When done, refrigerate the snacks while the oil in your fryer heats up to 190C (375F). Fry four bitterballen at a time, until golden.\r\n\r\nServe on a plate with a nice grainy or spicy mustard. \r\n", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Cashew Ghoriba Biscuits", "https://www.themealdb.com/images/media/meals/t3r3ka1560461972.jpg", 1, 52976, "", "Preheat the oven at 180 C / Gas 4. Line a baking tray with greaseproof paper.\r\nIn a bowl, 
mix the cashews and icing sugar. Add the egg yolks and orange blossom water and mix to a smooth homogeneous paste.\r\nTake lumps of the cashew paste and shape into 
small balls. Roll the balls in icing sugar and transfer to the baking tray. Push an almond in the centre of each ghribia.\r\nBake 
until the biscuits are lightly golden, about 20 minutes. Keep an eye on them, they burn quickly.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("White Russian", "https://www.thecocktaildb.com/images/media/drink/vsrupw1472405732.jpg", 0, 12528, "", "Pour vodka and coffee liqueur over ice cubes in an old-fashioned glass. Fill with light cream and serve.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Acid", "https://www.thecocktaildb.com/images/media/drink/xuxpxt1479209317.jpg", 0, 14610, "", "Pour in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser. ", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES
    ("Three-Cheese Souffles", "https://www.themealdb.com/images/media/meals/sxwquu1511793428.jpg", 1, 52912, "", "Heat oven to 200C/180C fan/ gas 6 and butter 4 small (about 200ml) ramekins. Sprinkle the Parmesan into the ramekins, turning until all sides are covered. Place the milk and bay leaves in a large saucepan over a gentle heat and bring to the boil. Turn off the heat and leave to infuse for 15 mins.\r\nDiscard the bay leaves, add the butter and flour, and return to a low heat. Very gently simmer, stirring continuously with a balloon whisk, for about 6 mins until you get a smooth, thick white sauce. Make sure that you get right into the corners of the pan to stop the sauce from catching or becoming lumpy.\r\nOnce thickened, transfer the sauce to a large bowl and stir in the mustard powder, cayenne pepper, Gruyère and egg yolks until fully combined.\r\nIn a spotlessly clean bowl and with a clean whisk, beat the egg whites just until peaks begin to form.\r\nCarefully fold the egg whites into the cheese sauce in three stages making sure you fold, rather than stir, to keep the egg whites light and airy. Fill the prepared ramekins with the soufflé mix.\r\nTop each soufflé with a slice of goat’s cheese, then place on a baking tray. Bake for 20-25 mins or until springy and well risen but cooked through.\r\nLeave to cool, then run a knife around the edge of each dish and remove the soufflés. If preparing in advance, place soufflés upside down (for neat presentation), on a tray. Cover tray in cling film. Chill for a few days or freeze for up to 1 month.\r\nWhen ready to re-bake, heat oven to 200C/180C fan/gas 6. Place the upside-down soufflés in a shallow baking dish, top with the remaining goat’s cheese slices and pour over the cream (this stops them from drying out when baked for the second time). Cook for 8-10 mins until golden. Serve immediately alongside some simply dressed salad.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES
    ("Creme Brulee", "https://www.themealdb.com/images/media/meals/uryqru1511798039.jpg", 1, 52917, "", "Heat the cream, chocolate and vanilla pod in a pan until the chocolate has melted. Take off the heat and allow to infuse for 10 mins, scraping the pod seeds into the cream. If using the vanilla extract, add straight away. Heat oven to 160C/fan 140C/gas 3.\r\nBeat yolks and sugar until pale. stir in the chocolate cream. Strain into a jug and pour into ramekins. Place in a deep roasting tray and pour boiling water halfway up the sides. Bake for 15-20 mins until just set with a wobbly centre. Chill in the fridge for at least 4 hrs.\r\nTo serve, sprinkle some sugar on top of the brûlées and caramelise with a blowtorch or briefly under a hot grill. Leave caramel to harden, then serve.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES
    ("Absinthe #2", "", 0, 12790, "https://www.thecocktaildb.com/images/media/drink/uxxtrt1472667197.jpg", "Mix together and let sit a few days. Strain through a coffee filter. To serve mix 1 part absinthe to 4 parts water, add ice, enjoy.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES
    ("Brainteaser", "https://www.thecocktaildb.com/images/media/drink/ruywtq1461866066.jpg", 0, 13405, "", "layered erin first, then sambuca and then avocart(should sit in middle of other two. To drink: use a straw to suck up avocart then shot the rest and then suck fumes up through straw.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Chocolate Avocado Mousse", "https://www.themealdb.com/images/media/meals/uttuxy1511382180.jpg", 1, 52853, "", "1. Blend all the mousse ingredients together in your food processor until smooth. Add the cacao powder first and, as you blend, have all the ingredients to hand in order to adjust the ratios slightly as the size of avocados and bananas varies so much. The perfect ratio in order to avoid the dish tasting too much of either is to use equal amounts of both.\r\n\r\n2. Taste and add a few drops of stevia if you feel you need more sweetness.\r\n\r\n3. Fill little cups or shot glasses with the mousse, sprinkle with the cacao powder or nibs and serve.\r\n\r\nTip If you don’t have a frozen banana to hand you can just use a normal one and then chill the mousse before serving for a cooling dessert.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Cosmopolitan Martini", "https://www.thecocktaildb.com/images/media/drink/upxxpq1439907580.jpg", 0, 14133, "", "Pour all ingredients in mixing glass half filled with ice, shake and strain into chilled Martini glass.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Spaghetti Bolognese", "https://www.themealdb.com/images/media/meals/sutysw1468247559.jpg", 1, 52770, "", "Put the onion and oil in a large pan and fry over a fairly high heat for 3-4 mins. Add the garlic and mince and fry until they both brown. Add the mushrooms and herbs, and cook for another couple of mins.\r\n\r\nStir in the tomatoes, beef stock, tomato ketchup or purée, Worcestershire sauce and seasoning. Bring to the boil, then reduce the heat, cover and simmer, stirring occasionally, for 30 mins.\r\n\r\nMeanwhile, cook the spaghetti in a large pan of boiling, salted water, according to packet instructions. Drain well, run hot water through it, put it back in the pan and add a dash of olive oil, if you like, then stir in the meat sauce. Serve in hot bowls and hand round Parmesan cheese, for sprinkling on top.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Chocolate Raspberry Brownies", "https://www.themealdb.com/images/media/meals/yypvst1511386427.jpg", 1, 52860, "", "Heat oven to 180C/160C fan/gas 4. Line a 20 x 30cm baking tray tin with baking parchment. Put the chocolate, butter and sugar in a pan and gently melt, stirring occasionally with a wooden spoon. Remove from the heat.\r\nStir the eggs, one by one, into the melted chocolate mixture. Sieve over the flour and cocoa, and stir in. Stir in half the raspberries, scrape into the tray, then scatter over the remaining raspberries. Bake on the middle shelf for 30 mins or, if you prefer a firmer texture, for 5 mins more. Cool before slicing into squares. Store in an airtight container for up to 3 days.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Halloween Punch", "https://www.thecocktaildb.com/images/media/drink/7hcgyj1571687671.jpg", 0, 178313, "", "Tip the cherry juice, orange peel, chilli, cinnamon sticks, cloves and ginger into a large saucepan. Simmer for 5 mins, then turn off the heat. Leave to cool, then chill for at least 4 hrs, or up to 2 days – the longer you leave it the more intense the flavours. If serving to young children, take the chilli out after a few hours.\r\n\r\nWhen you’re ready to serve, pour the juice into a jug. Serve in glass bottles or glasses and pop a straw in each. If you're adding vodka, do so at this stage. Dangle a fangs sweet from each glass.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Freddy Kruger", "https://www.thecocktaildb.com/images/media/drink/tuppuq1461866798.jpg", 0, 14688, "", "Make it an ample size shot!!", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Fettucine Alfredo", "https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg", 1, 52835, "", "In a medium saucepan, stir the clotted cream, butter and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm.\r\nMeanwhile, put the cheese and nutmeg in a small bowl and add a good grinding of black pepper, then stir everything together (don’t add any salt at this stage).\r\nPut the pasta in another pan with 2 tsp salt, pour over some boiling water and cook following pack instructions (usually 3-4 mins). When cooked, scoop some of the cooking water into a heatproof jug or mug and drain the pasta, but not too thoroughly.\r\nAdd the pasta to the pan with the clotted cream mixture, then sprinkle over the cheese and gently fold everything together over a low heat using a rubber spatula. When combined, splash in 3 tbsp of the cooking water. At first, the pasta will look wet and sloppy: keep stirring until the water is absorbed and the sauce is glossy. Check the seasoning before transferring to heated bowls. Sprinkle over some chives or parsley, then serve immediately.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Apple Frangipan Tart", "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg", 1, 52768, "", "Preheat the oven to 200C/180C Fan/Gas 6.\r\nPut the biscuits in a large re-sealable freezer bag and bash with a rolling pin into fine crumbs. Melt the butter in a small pan, then add the biscuit crumbs and stir until coated with butter. Tip into the tart tin and, using the back of a spoon, press over the base and sides of the tin to give an even layer. Chill in the fridge while you make the filling.\r\nCream together the butter and sugar until light and fluffy. You can do this in a food processor if you have one. Process for 2-3 minutes. Mix in the eggs, then add the ground almonds and almond extract and blend until well combined.\r\nPeel the apples, and cut thin slices of apple. Do this at the last minute to prevent the apple going brown. Arrange the slices over the biscuit base. Spread the frangipane filling evenly on top. Level the surface and sprinkle with the flaked almonds.\r\nBake for 20-25 minutes until golden-brown and set.\r\nRemove from the oven and leave to cool for 15 minutes. Remove the sides of the tin. An easy way to do this is to stand the tin on a can of beans and push down gently on the edges of the tin.\r\nTransfer the tart, with the tin base attached, to a serving plate. Serve warm with cream, crème fraiche or ice cream.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Egg Nog #4", "https://www.thecocktaildb.com/images/media/drink/wpspsy1468875747.jpg", 0, 12910, "", "In a small mixer bowl beat egg yolks till blended. Gradually add 1/4 cup sugar, beating at high speed till thick and lemon colored. Stir in milk, stir in rum, bourbon, vanilla, and salt. Chill thoroughly. Whip cream. Wash beaters well. In a large mixer bowl beat egg whites till soft peaks form. Gradually add remaining 1/4 cup sugar, beating to stiff peaks. Fold yolk mixture and whipped cream into egg whites. Serve immediately. Sprinkle nutmeg over each serving. Serve in a punch bowl or another big bowl. NOTE: For a nonalcoholic eggnog, prepare Eggnog as above, except omit the bourbon and rum and increase the milk to 3 cups.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Rum Toddy", "https://www.thecocktaildb.com/images/media/drink/athdk71504886286.jpg", 0, 12097, "", "Dissolve powdered sugar in water in an old-fashioned glass. Add rum and one ice cube and stir. Add the twist of lemon peel and serve.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Chicken Fajita Mac and Cheese", "https://www.themealdb.com/images/media/meals/qrqywr1503066605.jpg", 1, 52818, "", "Fry your onion, peppers and garlic in olive oil until nicely translucent. Make a well in your veg and add your chicken. Add your seasoning and salt. Allow to colour slightly.\r\nAdd your cream, stock and macaroni.\r\nCook on low for 20 minutes. Add your cheeses, stir to combine.\r\nTop with roasted peppers and parsley.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Cajun Spiced Fish Tacos", "https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg", 1, 52819, "", "Cooking in a cajun spice and cayenne pepper marinade makes this fish super succulent and flavoursome. Top with a zesty dressing and serve in a tortilla for a quick, fuss-free main that's delightfully summery.\r\n\r\nOn a large plate, mix the cajun spice and cayenne pepper with a little seasoning and use to coat the fish all over.\r\n\r\nHeat a little oil in a frying pan, add in the fish and cook over a medium heat until golden. Reduce the heat and continue frying until the fish is cooked through, about 10 minutes. Cook in batches if you don’t have enough room in the pan.\r\n\r\nMeanwhile, prepare the dressing by combining all the ingredients with a little seasoning.\r\nSoften the tortillas by heating in the microwave for 5-10 seconds. Pile high with the avocado, lettuce and spring onion, add a spoonful of salsa, top with large flakes of fish and drizzle over the dressing.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Margarita", "", 0, 11007, "https://www.thecocktaildb.com/images/media/drink/wpxpvu1439905379.jpg", "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Tequila Slammer", "https://www.thecocktaildb.com/images/media/drink/43uhr51551451311.jpg", 0, 178307, "", "Mix carefully to avoid releasing the dissolved CO2.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Spinach & Ricotta Cannelloni", "https://www.themealdb.com/images/media/meals/wspuvp1511303478.jpg", 1, 52849, "", "First make the tomato sauce. Heat the oil in a large pan and fry the garlic for 1 min. Add the sugar, vinegar, tomatoes and some seasoning and simmer for 20 mins, stirring occasionally, until thick. Add the basil and divide the sauce between 2 or more shallow ovenproof dishes (see Tips for freezing, below). Set aside. Make a sauce by beating the mascarpone with the milk until smooth, season, then set aside.\r\n\r\nPut the spinach in a large colander and pour over a kettle of boiling water to wilt it (you may need to do this in batches). When cool enough to handle squeeze out the excess water. Roughly chop the spinach and mix in a large bowl with 100g Parmesan and ricotta. Season well with salt, pepper and the nutmeg.\r\n\r\nHeat oven to 200C/180C fan/gas 6. Using a piping bag or plastic food bag with the corner snipped off, squeeze the filling into the cannelloni tubes. Lay the tubes, side by side, on top of the tomato sauce and spoon over the mascarpone sauce. Top with Parmesan and mozzarella. You can now freeze the cannelloni, uncooked, or you can cook it first and then freeze. Bake for 30-35 mins until golden and bubbling. Remove from oven and let stand for 5 mins before serving.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Old Fashioned", "https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg", 0, 11001, "", "Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.\r\nFill the glass with ice cubes and add whiskey.\r\n\r\nGarnish with orange twist, and a cocktail cherry.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Manhattan", "https://www.thecocktaildb.com/images/media/drink/ec2jtz1504350429.jpg", 0, 11008, "", "Stirred over ice, strained into a chilled glass, garnished, and served up.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Duck Confit", "https://www.themealdb.com/images/media/meals/wvpvsu1511786158.jpg", 1, 52907, "", "The day before you want to make the dish, scatter half the salt, half the garlic and half of the herbs over the base of a small shallow dish. Lay the duck legs, skin-side up, on top, then scatter over the remaining salt, garlic and herbs. Cover the duck and refrigerate overnight. This can be done up to 2 days ahead.\r\nPour the wine into a saucepan that will snugly fit the duck legs in a single layer. Brush the salt off the duck legs and place them, skin-side down, in the wine. Cover the pan with a lid and place over a medium heat. As soon as the wine starts to bubble, turn the heat down to the lowest setting and cook for 2 hours, checking occasionally that the liquid is just barely simmering. (If you own a heat diffuser, it would be good to use it here.) After 2 hours, the duck legs should be submerged in their own fat and the meat should feel incredibly tender when prodded. Leave to cool.\r\nThe duck legs are now cooked and can be eaten immediately – or you can follow the next step if you like them crisp. If you are preparing ahead, pack the duck legs tightly into a plastic container or jar and pour over the fat, but not the liquid at the bottom of the pan. Cover and leave in the fridge for up to a month, or freeze for up to 3 months. The liquid you are left with makes a tasty gravy, which can be chilled or frozen until needed.\r\nTo reheat and crisp up the duck legs, heat oven to 220C/fan 200C/gas 7. Remove the legs from the fat and place them, skin-side down, in an ovenproof frying pan. Roast for 30-40 mins, turning halfway through, until brown and crisp. Serve with the reheated gravy, a crisp salad and some crisp golden ptoatoes.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Ratatouille", "https://www.themealdb.com/images/media/meals/wrpwuu1511786491.jpg", 1, 52908, "", "Cut the aubergines in half lengthways. Place them on the board, cut side down, slice in half lengthways again and then across into 1.5cm chunks. Cut off the courgettes ends, then across into 1.5cm slices. Peel the peppers from stalk to bottom. Hold upright, cut around the stalk, then cut into 3 pieces. Cut away any membrane, then chop into bite-size chunks.\r\nScore a small cross on the base of each tomato, then put them into a heatproof bowl. Pour boiling water over the tomatoes, leave for 20 secs, then remove. Pour the water away, replace the tomatoes and cover with cold water. Leave to cool, then peel the skin away. Quarter the tomatoes, scrape away the seeds with a spoon, then roughly chop the flesh.\r\nSet a sauté pan over medium heat and when hot, pour in 2 tbsp olive oil. Brown the aubergines for 5 mins on each side until the pieces are soft. Set them aside and fry the courgettes in another tbsp oil for 5 mins, until golden on both sides. Repeat with the peppers. Don’t overcook the vegetables at this stage, as they have some more cooking left in the next step.\r\nTear up the basil leaves and set aside. Cook the onion in the pan for 5 mins. Add the garlic and fry for a further min. Stir in the vinegar and sugar, then tip in the tomatoes and half the basil. Return the vegetables to the pan with some salt and pepper and cook for 5 mins. Serve with basil.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("French 75", "https://www.thecocktaildb.com/images/media/drink/4qnyty1504368615.jpg", 0, 17197, "", "Combine gin, sugar, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with Champagne. Stir gently.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("French Connection", "https://www.thecocktaildb.com/images/media/drink/zaqa381504368758.jpg", 0, 17198, "", "Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 8);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Beef Stroganoff", "https://www.themealdb.com/images/media/meals/svprys1511176755.jpg", 1, 52834, "", "Heat the olive oil in a non-stick frying pan then add the sliced onion and cook on a medium heat until completely softened, so around 15 mins, adding a little splash of water if they start to stick at all. Crush in the garlic and cook for a 2-3 mins further, then add the butter. Once the butter is foaming a little, add the mushrooms and cook for around 5 mins until completely softened. Season everything well, then tip onto a plate.\r\nTip the flour into a bowl with a big pinch of salt and pepper, then toss the steak in the seasoned flour. Add the steak pieces to the pan, splashing in a little oil if the pan looks particularly dry, and fry for 3-4 mins, until well coloured. Tip the onions and mushrooms back into the pan. Whisk the crème fraîche, mustard and beef stock together, then pour into the pan. Cook over a medium heat for around 5 mins. Scatter with parsley, then serve with pappardelle or rice.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 9);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Moscow Mule", "https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg", 0, 11009, "", "Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 9);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Orange Whip", "https://www.thecocktaildb.com/images/media/drink/ttyrxr1454514759.jpg", 0, 16995, "", "Pour ingredients over ice and stir.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 9);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Dark and Stormy", "https://www.thecocktaildb.com/images/media/drink/t1tn0s1504374905.jpg", 0, 17211, "", "In a highball glass filled with ice add 6cl dark rum and top with ginger beer. Garnish with lime wedge.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 9);

INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Kentucky Fried Chicken", "https://www.themealdb.com/images/media/meals/xqusqy1487348868.jpg", 1, 52813, "", "Preheat fryer to 350°F. Thoroughly mix together all the spice mix ingredients.\r\nCombine spice mix with flour, brown sugar and salt.\r\nDip chicken pieces in egg white to lightly coat them, then transfer to flour mixture. Turn a few times and make sure the flour mix is really stuck to the chicken. Repeat with all the chicken pieces.\r\nLet chicken pieces rest for 5 minutes so crust has a chance to dry a bit.\r\nFry chicken in batches. Breasts and wings should take 12-14 minutes, and legs and thighs will need a few more minutes. Chicken pieces are done when a meat thermometer inserted into the thickest part reads 165°F.\r\nLet chicken drain on a few paper towels when it comes out of the fryer. Serve hot.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 10);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Kentucky B And B", "https://www.thecocktaildb.com/images/media/drink/sqxsxp1478820236.jpg", 0, 11602, "", "Pour the bourbon and Benedictine into a brandy snifter.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 10);
INSERT INTO fooddrinks
    (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES
    ("Bible Belt", "https://www.thecocktaildb.com/images/media/drink/6bec6v1503563675.jpg", 0, 16986, "", "Mix all ingredients, and pour over ice.", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 10);
