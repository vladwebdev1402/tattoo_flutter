import 'package:intl/intl.dart';

String formateNumber(int num) =>
    NumberFormat('#,##0').format(num).replaceAll(',', ' ');
