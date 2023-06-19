import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class instruct extends StatelessWidget {
  const instruct({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ) ,
      body:  Container(
        decoration: BoxDecoration(
           gradient: LinearGradient(colors: [const Color.fromARGB(255, 221, 75, 182).withOpacity(0.8),
          const Color.fromARGB(255, 132, 245, 226).withOpacity(0.8)]),
        ),
        child: Center(
          child: Container(
            height: 300,
            width:screenSize.width-50 ,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10.withOpacity(0.8)),
                borderRadius: BorderRadius.circular(10)
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Hướng dẫn tìm mật khẩu",
                          style: GoogleFonts.sarabun(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 95, 77, 228),
                              fontWeight: FontWeight.bold
                              ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(" Mỗi một lần chơi sẽ có một mật khẩu gồm 4 chữ số khác nhau từ 0-9. Nhiệm vụ của bạn là trong 10 lượt đoán bạn hãy tìm ra mật khẩu đó. Mỗi lần đoán bạn sẽ biết được bạn đã đoán đúng bao nhiêu số và bao nhiêu số đúng vị trí so với mật khẩu.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sarabun(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 95, 77, 228),
                            fontStyle: FontStyle.italic)),
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}