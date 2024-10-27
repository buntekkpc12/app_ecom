class TPricingCalculattor {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String caculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //lookup the shipping cost for the given location using a shipping rate API.
    //Return the appropriate tax rate.
    return 0.10; //Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    //lookup the shipping cost for the given location using a shipping rate API.
    //Caculate the shipping cose based on various fastors like distance, weight, etc.
    return 5.0; //Example shipping cost 5$
  }

  /// -- Sum all cart values and return total amount
//static double calculateCartTotal(CartModel cart) {
//return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
//}
}
