import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WinnerScreen extends StatefulWidget {
  const WinnerScreen({super.key,
  required this.sendRandomNumber
  });
  final String sendRandomNumber;
  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color.fromARGB(255, 221, 75, 182).withOpacity(0.8),
            const Color.fromARGB(255, 132, 245, 226).withOpacity(0.8)])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20, right: 20),
                   child: Text("Bạn đã chiến thắng. Mật mã chính xác là:",textAlign: TextAlign.center, style: GoogleFonts.sarabun(fontSize: 16, color: const Color.fromARGB(255, 21, 29, 242))),
                 ),
                Text(widget.sendRandomNumber,style: GoogleFonts.sarabun(fontSize: 16, color: const Color.fromARGB(255, 21, 29, 242)))
              ],
            ),
             Container(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size(200, 50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 11, 5, 102)),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context,"/home");
                            },
                            child: Text(
                              "Replay",
                              style: GoogleFonts.sarabun(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
          ],
        ),
      ),
    );
  }
}