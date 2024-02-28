List<Map<String, dynamic>> foodMenu = [
  {"s.no": 1, "name": "Chicken Tikka Leg", "price": 300},
  {"s.no": 2, "name": "Chicken Tikka Chest", "price": 320},
  {"s.no": 3, "name": "Chicken Seekh Kabab", "price": 400},
  {"s.no": 4, "name": "Chicken Boti Plate", "price": 380},
  {"s.no": 5, "name": "Beef Boti Plate", "price": 380},
  {"s.no": 6, "name": "Beef Biryani", "price": 250},
  {"s.no": 7, "name": "Chicken Biryani", "price": 220},
  {"s.no": 8, "name": "Beef Pulao", "price": 250},
  {"s.no": 9, "name": "Chicken Pulao", "price": 220},
  {"s.no": 10, "name": "Zinger Burger", "price": 350},
  {"s.no": 11, "name": "Beef Burger", "price": 250},
  {"s.no": 12, "name": "Chicken Burger", "price": 240},
  {"s.no": 13, "name": "Plain Frice", "price": 100},
  {"s.no": 14, "name": "Garlic Frice", "price": 200},
  {"s.no": 15, "name": "Cheese Frice", "price": 200},

];

void displayMenu() {
  print("Food Menu:");
  for (var item in foodMenu) {
    print("${item['s.no']}. ${item['name']} - Rs${item['price']}");
  }
}

double calculateBill(List<String> selectedItems) {
  double total = 0;
  for (var item in foodMenu) {
    if (selectedItems.contains(item['name']) || selectedItems.contains(item['s.no'].toString())) {
      total += item['price'];
    }
  }
  return total;
}
