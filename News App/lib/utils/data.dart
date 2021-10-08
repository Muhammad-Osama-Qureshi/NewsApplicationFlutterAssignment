import 'package:news_app/models/categoryModel.dart';

List<Categorymodel> getCategories() {
  List<Categorymodel> categories = <Categorymodel>[];
  Categorymodel categorymodel = Categorymodel();

  //1
  categorymodel.categoryName = "Business";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633516902356-7a7966777485?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80";
  categories.add(categorymodel);

  //2
  categorymodel = Categorymodel();
  categorymodel.categoryName = "General";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633525057676-8185c059e1ef?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80";
  categories.add(categorymodel);

  //3
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Entertainment";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1169&q=80";
  categories.add(categorymodel);

  //4
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Health";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1618392163061-779e411442fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80";
  categories.add(categorymodel);

  //5
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Science";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633625463244-19e22598bceb?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  //6
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Sports";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633618439549-523db2e3f416?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=388&q=80";
  categories.add(categorymodel);

  //7
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Technology";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1534353436294-0dbd4bdac845?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw4MHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  return categories;
}
