class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: "Ração",
    image: "imagens/Dog Bowl.png",
  ),
    Category(
    title: "Higiene",
    image: "imagens/Pet Clippers.png",
  ),
    Category(
    title: "Pet Safe",
    image: "imagens/Dog Training.png",
  ),
    Category(
    title: "Diversão",
    image: "imagens/Dog Park.png",
  ),

];