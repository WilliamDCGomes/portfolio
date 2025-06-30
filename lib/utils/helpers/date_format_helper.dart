import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

class DateFormatHelper {
  static String formatDate(DateTime? date) {
    if(date != null) {
      return DateFormat('dd-MM-yyyy').format(date).replaceAll('-', '/');
    }
    return "";
  }

  static String formatHour(TimeOfDay? time) {
    if(time != null){
      String hour = (time.hour < 10 ? "0" : "") + time.hour.toString();
      String minute = (time.minute < 10 ? "0" : "") + time.minute.toString();
      return  "$hour:$minute";
    }
    return "";
  }

  static String formatDateAmerican(DateTime? date) {
    if(date != null) {
      return DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
    }
    return "";
  }

  static DateTime? formatDateFromTextField(String? date) {
    if(date != null) {
      var dates = date.split('/');
      DateTime newDate = DateTime(
        int.parse(dates[2]),
        int.parse(dates[1]),
        int.parse(dates[0]),
      );
      return newDate;
    }
    return null;
  }

  static String formatDateFromReport(String? date) {
    try{
      if(date != null) {
        var dates = date.split(' ');
        var justDate = dates[0].split('/');
        var justHour = dates[1].split(':');
        DateTime newDate = DateTime(
          int.parse(justDate[2]),
          int.parse(justDate[1]),
          int.parse(justDate[0]),
          int.parse(justHour[0]),
          int.parse(justHour[1]),
        );

        return "${DateFormat('dd-MM-yyyy').format(newDate).replaceAll('-', '/')} às ${DateFormat('HH:mm').format(newDate)}";
      }
      return "";
    }
    catch(_){
      return "";
    }
  }

  static String formatDateAndHour(DateTime? date) {
    if(date != null) {
      return "${DateFormat('dd-MM-yyyy').format(date).replaceAll('-', '/')} às ${DateFormat('HH:mm').format(date)}";
    }
    return "";
  }

  static String hourFromDate(DateTime? date) {
    if(date != null) {
      return DateFormat('HH:mm').format(date);
    }
    return "";
  }

  static String formatDateAndTimePdf(DateTime? date) {
    if(date != null) {
      return "${DateFormat('dd-MM-yyyy').format(date)}_AS_${DateFormat('HH:mm:ss:SS').format(date)}";
    }
    return "";
  }

  static String formatDateFull(DateTime? date) {
    if(date != null) {
      initializeDateFormatting('pt_BR', null);
      Intl.defaultLocale = 'pt_BR';
      return DateFormat('yMMMd').format(date);
    }
    return "";
  }

  static String dayAndMonth(DateTime? date) {
    if(date != null) {
      initializeDateFormatting('pt_BR', null);
      Intl.defaultLocale = 'pt_BR';
      return DateFormat('dd-MM').format(date).replaceAll('-', '/').toUpperCase();
    }
    return "";
  }

  static String monthAndYearReduced(DateTime? date) {
    if(date != null) {
      initializeDateFormatting('pt_BR', null);
      Intl.defaultLocale = 'pt_BR';
      return DateFormat('MM-yyyy').format(date).replaceAll('-', '/').toUpperCase();
    }
    return "";
  }

  static String monthAndYear(DateTime? date) {
    if(date != null) {
      initializeDateFormatting('pt_BR', null);
      Intl.defaultLocale = 'pt_BR';
      return DateFormat('MMMM-yyyy').format(date).replaceAll('-', ' ').toUpperCase();
    }
    return "";
  }

  static String month(DateTime? date) {
    if(date != null) {
      initializeDateFormatting('pt_BR', null);
      Intl.defaultLocale = 'pt_BR';
      return DateFormat('MMMM').format(date).replaceAll('-', ' ');
    }
    return "";
  }

  static DateTime firstDateOfMonth() {
    DateTime todayDate = DateTime.now();
    return DateTime(todayDate.year, todayDate.month, 1);
  }

  static DateTime convertDateFromNewMessage(String dateAndHour) {
    try {
      var dateAndHourSeparated = dateAndHour.split('T');
      var justDate = dateAndHourSeparated[0].split('-');
      var justHour = dateAndHourSeparated[1].split('.');
      var hour = justHour[0].split(':');

      return DateTime(
        int.parse(justDate[0]),
        int.parse(justDate[1]),
        int.parse(justDate[2]),
        int.parse(hour[0]),
        int.parse(hour[1]),
        int.parse(hour[2]),
      );
    }
    catch(_){
      return DateTime.now();
    }
  }

  static DateTime lastDateOfMonth() {
    DateTime todayDate = DateTime.now();
    return DateTime(todayDate.year, todayDate.month + 1, 0);
  }
}