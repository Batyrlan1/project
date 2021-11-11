import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'История',
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Color(0xFF4A148C),
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          historyOne(context),
          const SizedBox(
            height: 20,
          ),
          historySecond(context),
          const SizedBox(
            height: 20,
          ),
          historyThird(context),
        ],
      ),
    );
  }

  Widget historyOne(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Пополнение с Halyk Bank',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  'Время:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '15:10',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Реквизиты карты:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '8989856265265',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: DottedLine(
                dashColor: Colors.grey,
                lineThickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Пополнение',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '+100 ТГ',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget historySecond(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Перевод на баланс "Айдар"',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  'Время:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '15:10',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: DottedLine(
                dashColor: Colors.grey,
                lineThickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Перевод',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '-100 ТГ',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget historyThird(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '№ вагона:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '56688965',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  'Время:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '15:10',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Маршрут:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  'Талгар-Акбулак',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 55,
                ),
                Text(
                  'Серия:',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '11000001Л',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: DottedLine(
                dashColor: Colors.grey,
                lineThickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Оплата',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '80 ТГ',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
