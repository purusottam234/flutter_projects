// creating recipe list
class Recipe {
  String label;
  String imageUrl;
  // todo: add servings and ingredients here
  int servings;
  List<Integredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  // todo: add list <Recipe> here
  static List<Recipe> samples = [
    Recipe('spaghetti and meatballs', 'assets/meat.jpg', 4, [
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
    ]),
    Recipe('tomato soup', 'assets/2.jpg', 4, [
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
    ]),
    Recipe('momo', 'assets/3.jpg', 4, [
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
    ]),
    Recipe('Biryani', 'assets/6.jpg', 4, [
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
    ]),
    Recipe('Noodles', 'assets/5.jpg', 4, [
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
    ]),
    Recipe('Juices', 'assets/4.jpg', 4, [
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
      Integredient(1, 'box', 'meat'),
    ]),
  ];
}

// todo: Add Ingredients here
class Integredient {
  double quantity;
  String measure;
  String name;
  Integredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
