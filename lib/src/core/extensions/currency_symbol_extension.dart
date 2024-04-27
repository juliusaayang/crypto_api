
extension CurrencySymbol on String {
  String getCurrencySymbol() {
    switch (this) {
      case 'NGN':
        return '₦';
      case 'USD':
        return r'$';
      default:
        return '';
    }
  }
}
