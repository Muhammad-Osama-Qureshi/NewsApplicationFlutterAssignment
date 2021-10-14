import '/models/categoryModel.dart';

List<Categorymodel> getCategories() {
  List<Categorymodel> categories = <Categorymodel>[];
  Categorymodel categorymodel = Categorymodel();

  //1
  categorymodel.categoryName = "Business";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633511089809-fbe0483ca103?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80";
  categories.add(categorymodel);

  //2
  categorymodel = Categorymodel();
  categorymodel.categoryName = "General";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633614025929-fb24e9765cb5?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMTV8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  //3
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Entertainment";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633620238705-37f259448f7f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  //4
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Health";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633637657861-ac9ac7139d42?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  //5
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Science";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633624632126-c924eba2d509?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3OHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  //6
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Sports";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1633651400570-b63df5f8709a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  categories.add(categorymodel);

  //7
  categorymodel = Categorymodel();
  categorymodel.categoryName = "Technology";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1621609764095-b32bbe35cf3a?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80";
  categories.add(categorymodel);

  return categories;
}
