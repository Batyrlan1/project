import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/Pages/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  final color = Colors.white;

  List<String> categories = [
    "7458 8754 9446 4613",
    "4114 4646 4613 5464",
    "7464 8465 9845 4513",
  ];

  // ignore: prefer_typing_uninitialized_variables
  var Category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Главная',
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Color(0xFF4A148C),
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: color,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 200,
                          height: 35,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: DropdownButtonFormField<String>(
                            icon: const Icon(CupertinoIcons.chevron_down),
                            iconSize: 14,
                            iconEnabledColor: Colors.grey,
                            value: Category,
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: "7541 5236 5912 4574",
                              hintStyle: GoogleFonts.montserrat(
                                fontSize: 15,
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 10,
                                bottom: 10,
                                top: 10,
                              ),
                              border: InputBorder.none,
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            items: categories.map((value) {
                              return DropdownMenuItem(
                                  value: value, child: Text(value));
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                Category = value!;
                              });
                            },
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Динмухаммед Калыбеков",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.w200)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Баланс:",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(
                                "Поездки:",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(
                                "Тариф:",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "500 тг",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "1 п",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                              const SizedBox(
                                width: 55,
                              ),
                              Text(
                                "Стандарт",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            border: Border.all(color: Colors.purple, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 160,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: Center(
                child: QrImage(
                  data: Category.toString(),
                  version: QrVersions.auto,
                  size: 150.0,
                  backgroundColor: color,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: color,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Приложите QR код к устройству считывания,",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "либо отсканируйте код трамвая для оплаты",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const qrPage()));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff1b5e20), width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: const Color(0xFF3AA141),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Сканировать QR",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
