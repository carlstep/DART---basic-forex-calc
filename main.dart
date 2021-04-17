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

    double rate = 0; //amount("What is the exchange rate?");

    if(firstCurrency == "USD" && secondCurrency == "GBP") {
        rate = 0.72;
    } else if(firstCurrency == "USD" && secondCurrency == "EUR") {
        rate = 0.83;
    } else if(firstCurrency == "GBP" && secondCurrency == "USD") {
        rate = 1.38;
    } else if(firstCurrency == "GBP" && secondCurrency == "EUR") {
        rate = 1.15;
    } else if(firstCurrency == "EUR" && secondCurrency == "USD") {
        rate = 1.19;
    } else if(firstCurrency == "EUR" && secondCurrency == "GBP") {
        rate = 0.86;
        }

    double convert = howMuch * rate;
    print("${howMuch} ${firstCurrency} will give you ${convert} ${secondCurrency}, based on ${rate}");
}