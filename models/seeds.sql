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

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Bitterballen Dutch Meatballs", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "1");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Cashew Ghoriba Biscuits", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "1");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("White Russian", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "1");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Acid", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "1");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES ("Three Cheese Souffles", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "2");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES ("Creme Brulee", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "2");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES ("Absinthe #2", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "2");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, createdAt, updatedAt, ThemeId)
VALUES ("Brainteaser", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "2");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Chocolate Avocado Mousse", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "3");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Cosmopolitan Martini", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "3");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Spaghetti Bolognese", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "4");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Chocolate Rasberry Brownies", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "4");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Halloween Punch", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "4");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Freddy Kruger", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "4");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Fettucini Alfredo", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "5");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Apple Frangipan Tart", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "5");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Egg Nog#4", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "5");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Rum Toddy", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "5");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Chicken Fajita Mac and Cheese", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "6");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Cajun Fish Tacos", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "6");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Margarita", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "6");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Tequila Slammer", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "6");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Spinach & Ricotta Cannelloni", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "7");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Old Fashioned", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "7");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Manhattan", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "7");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Duck Confit", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "8");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Ratatouille", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "8");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("French 75", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "8");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("French Connection", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "8");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Beef Stroganoff", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "9");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Moscow Mule", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "9");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Orange Whip", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "9");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Dark and Stormy", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "9");

INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Kentucky Fried Chicken", "", "1", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "10");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Kentucky B&B", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "10");
INSERT INTO fooddrinks (name, imageURL, isMeal, apiID, ingredients, instructions, createdAt, updatedAt, ThemeId)
VALUES ("Bible Belt", "", "0", "", "", "", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, "10");
