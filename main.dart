import "dart:math";
import "dart:io";

double amount(String promptAmount) {
    print(promptAmount);
    double quantity = double.parse(stdin.readLineSync());
    return quantity;
}

String prompt(String promptText) {
    print(promptText);
    String answer = stdin.readLineSync();
    return answer;
}

void main() {

    String firstCurrency = prompt("enter first currency: ");
    print("The currency you want to exchange from is ${firstCurrency}");

    double howMuch = amount("How much ${firstCurrency} do you want to change? ");

    String secondCurrency = prompt("What currency do you want to exchange to? ");
    print("You want to exchange ${howMuch} ${firstCurrency} into ${secondCurrency}.");

    double rate = amount("What is the exchange rate?");

    double convert = howMuch * rate;
    print("${howMuch} ${firstCurrency} will give you ${convert} ${secondCurrency}");
}