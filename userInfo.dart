import 'dart:io';

String? userName;
String? userEmail;
String? userPassword;

void createAccount() {
  print("Create Your Account:");
  stdout.write("Name: ");
  userName = stdin.readLineSync();
  stdout.write("Email: ");
  userEmail = stdin.readLineSync();
  stdout.write("Password: ");
  userPassword = stdin.readLineSync();
}

bool login() {
  print("Login to Your Account:");
  stdout.write("Email: ");
  String? inputEmail = stdin.readLineSync();
  stdout.write("Password: ");
  String? inputPassword = stdin.readLineSync();

  if (inputEmail == userEmail && inputPassword == userPassword) {
    print("Login Successful!");
    print("Hello Good Evening $userName");
    return true;
  } else {
    print("Incorrect email or password. Please try again.");
    return false;
  }
}
