import 'package:library_system/models/library_item.dart';

class Library {
  List<LibraryItem> libraryProducts = [];

  String addProduct(LibraryItem product) {
    if (isProductInLibrary(product)) {
      return addProductMessage(true, product);
    } else {
      libraryProducts.add(product);
      return addProductMessage(false, product);
    }
  }

  String deleteProduct(LibraryItem product) {
    if (isProductInLibrary(product)) {
      libraryProducts.remove(product);
      return deleteProductMessage(true, product);
    } else {
      return deleteProductMessage(false, product);
    }
  }

  void showProducts() {
    if (libraryProducts.isEmpty) {
      print(showListedProducts(libraryProducts)[0]);
    } else {
      for (String product in showListedProducts(libraryProducts)) {
        print(product);
      }
    }
  }

  List<String> showListedProducts(List<LibraryItem> libraryProducts) {
    if (libraryProducts.isEmpty) {
      return ['No products added yet.'];
    } else {
      List<String> listedProducts = [];
      for (LibraryItem producto in libraryProducts) {
        listedProducts.add(producto.showInfo());
      }
      return listedProducts;
    }
  }

  String deleteProductMessage(bool isProductInLibrary, LibraryItem product) {
    return isProductInLibrary
        ? '${product.runtimeType} succesfully deleted.'
        : "The ${product.runtimeType}: $product, couldn't be found.";
  }

  String addProductMessage(bool isProductInLibrary, LibraryItem product) {
    return isProductInLibrary
        ? 'The ${product.runtimeType}: $product, is already in the library.'
        : '${product.runtimeType} successfully added.';
  }

  bool isProductInLibrary(LibraryItem product) {
    return libraryProducts.contains(product);
  }
}
