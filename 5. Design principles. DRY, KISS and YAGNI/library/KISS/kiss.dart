double calculateDiscount({
  required double price,
  required int quantity,
  required bool isPremiumCustomer,
}) {
  if (isPremiumCustomer && quantity > 10) {
    return price * 0.8;
  }
  if (!isPremiumCustomer && quantity > 10 && price > 100) {
    return price * 0.85;
  }
  if (quantity > 10 || isPremiumCustomer) {
    return price * 0.9;
  }

  return price;
}
