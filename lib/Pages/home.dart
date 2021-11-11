import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Расписание',
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
      body: const Center(
        child: Text('Добро пожаловать!'),
      ),
    );
  }
}
