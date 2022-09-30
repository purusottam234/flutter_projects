import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeAPP());
}

class RecipeAPP extends StatelessWidget {
  const RecipeAPP({super.key});

  // This widget is the root of your application.
  // widget's build method is the entry point for the composing together other widgets to make a new widget
  // override annotation tells the dart analyzer that this method is supposed to replace the default method from stateless widget
  @override
  Widget build(BuildContext context) {
    // theme determines visual aspects like color by default themedata shows standard material defaults
    final ThemeData theme = ThemeData();
    // materialApp uses material design and is the widget that will be included in RecipeApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title of the app is the description that the device used to identify the app UI won't display this
      title: 'Recipe Calculator',
      // by copying the theme and replacing color scheme with an updated copy lets
      // you change the app's colors.
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // this is the widget
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// scaffold provides the high level structure for a screen
    return Scaffold(
      // appbar gets a title property by using a Text widget
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // safeArea keeps the app from getting too close to the operating system interfaces such as teh notch or interactive areas like Home Indicator at hte bottom of screens
      body: SafeArea(
        // Builds a list using ListView
        child: ListView.builder(
          // itemcount determines the number of rows the list has
          itemCount: Recipe.samples.length,
          // itembuilder builds the widget tree for each row
          // this is updated with gesture

          itemBuilder: (BuildContext context, int index) {
            //   return buildRecipeCard(Recipe.samples[index]);
            // text widget displays the name of the recipe
            // return Text(Recipe.samples[index].label);
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // return Text('Detail Page');
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    // elevation determines how high off the screen the card is , affecting its shadow
    elevation: 2.0,
    // shape handles the shape of the card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    // padding insects is used to provide padding
    child: Padding(
      // padding child is vertical column with image and text
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(image: AssetImage(recipe.imageUrl)),
          // sizedBox is between the image and text this is the blank view with fixed size
          const SizedBox(
            height: 14.0,
          ),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          ),
        ],
      ),
    ),
  );
}
