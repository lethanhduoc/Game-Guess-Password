import"package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
// ignore: camel_case_types
class selectPage extends StatelessWidget {
  const selectPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [const Color.fromARGB(255, 221, 75, 182).withOpacity(0.8),
              const Color.fromARGB(255, 132, 245, 226).withOpacity(0.8)])
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 11, 5, 102)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                        "Play",
                          style: GoogleFonts.sarabun(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 11, 5, 102)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                        "Instruct",
                          style: GoogleFonts.sarabun(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.ballot_outlined),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/instruct');
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}