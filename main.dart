import 'dart:io';
import 'userInfo.dart';
import 'menu.dart';

void main() {
  print("===================================================================");
  print(" ********************* Welcome to Hot & Roll *********************");
  print("===================================================================");

  createAccount();
  while (!login()) {}

  displayMenu();

  List<String> selectedItems = [];
  while (true) {
    stdout.write("Select an item by their Serial No and then type 'bill' to Receive Your Bill: ");
    String? selectedItem = stdin.readLineSync();
    if (selectedItem == 'bill') {
      break;
    } else if (foodMenu.any((item) => item['name'] == selectedItem || item['s.no'].toString() == selectedItem)) {
      selectedItems.add(selectedItem!);
    } else {
      print("Invalid item! Please select from the menu.");
    }
  }

  print("Selected items:");
  for (var item in selectedItems) {
    var selectedItemName = foodMenu.firstWhere((element) => element['name'] == item || element['s.no'].toString() == item)['name'];
    print(selectedItemName);
  }
  double totalBill = calculateBill(selectedItems);
  print("Total Bill: Rs${totalBill.toStringAsFixed(2)}");

  print("Thank You $userName! Your Order Has Been Placed!");
}
