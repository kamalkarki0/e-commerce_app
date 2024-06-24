import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    return DateFormat('dd-MMM-yyyy').format(date!);
  }

  static String forrmatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phonNumber) {
    if (phonNumber.length == 10) {
      return '(${phonNumber.substring(0, 3)}) ${phonNumber.substring(3, 6)} ${phonNumber.substring(6)}';
    } else if (phonNumber.length == 11) {
      return '(${phonNumber.substring(0, 4)}) ${phonNumber.substring(4, 7)} ${phonNumber.substring(7)}';
    }
    return phonNumber;
  }

  // Not fully tested.
//   static String internationalFormatPhoneNumber(String phoneNumber) {
// // Remove any non-digit characters from the phone number

//     var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

//     //extract the country code from the digitsOnly
//     String countryCode = '+${digitsOnly.substring(0, 2)}';
//     digitsOnly = digitsOnly.substring(2);

//     //Add the remaining digits with proper formatting
//     final formattedNumber = StringBuffer();

//     formattedNumber.write('($countryCode)');

//     int i = 0;
//     while (i < digitsOnly.length) {
//       int groupLength = 2;

//       if (i == 0 && countryCode == '+1') {
//         groupLength = 3;
//       }

//       int end = i + groupLength;

//       formattedNumber.write(digitsOnly.substring(i, end));

//       if (end < digitsOnly.length) {
//         formattedNumber.write(' ');
//       }

//       i = end;
//     }
//   }
}
