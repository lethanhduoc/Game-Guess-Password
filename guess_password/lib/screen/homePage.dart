import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:guess_password/screen/loseScreen.dart';
import 'package:guess_password/screen/winScreen.dart';

import '../handle/random.dart';

class MyDataTable extends StatefulWidget {
  const MyDataTable({
    super.key,
  });
  
  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
   List<int> randomNumbers = generateRandomNumbers();
   TextEditingController textController = TextEditingController();
   TextEditingController textController_2 = TextEditingController();
   TextEditingController textController_3 = TextEditingController();
   TextEditingController textController_4 = TextEditingController();
   TextEditingController textController_5 = TextEditingController();
   TextEditingController textController_6 = TextEditingController();
   TextEditingController textController_7 = TextEditingController();
   TextEditingController textController_8 = TextEditingController();
   TextEditingController textController_9 = TextEditingController();
   TextEditingController textController_10 = TextEditingController();

   List<int> numbers = [];
   List<int> correctNumber =[];
   List<int> correctPositions = [];
  void updateNumbers(String value) {
    numbers.clear();
    for (int i = 0; i < value.length; i++) {
      int? digit = int.tryParse(value[i]);
      if (digit != null) {
        numbers.add(digit);
      }
    }
  }
 int correct = 0;
 int positions = 0;
 bool enable = false;
 bool enable2 = false;
 bool enable3 = false;
 bool enable4 = false;
 bool enable5 = false;
 bool enable6 = false;
 bool enable7 = false;
 bool enable8 = false;
 bool enable9 = false;
 bool enable10 = false;
 bool enableTest = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: DataTable(horizontalMargin: 10,
          columnSpacing: 25,
            columns:  [
              DataColumn(label: screenSize.width>660?  Text('Number guesses',style: GoogleFonts.sarabun(fontSize: 16, color: Colors.white),): Text("Number\nGuesses",style: GoogleFonts.sarabun(fontSize: 12, color: Colors.white))),
              DataColumn(label: screenSize.width>660?  Text('Your guess',style: GoogleFonts.sarabun(fontSize: 16, color: Colors.white)): Text("Your\nGuess",style: GoogleFonts.sarabun(fontSize: 12, color: Colors.white))),
              DataColumn(label: screenSize.width>660?  Text('Correct Numbers',style: GoogleFonts.sarabun(fontSize: 16, color: Colors.white,)): Text("Correct\nNumbers",style: GoogleFonts.sarabun(fontSize: 12, color: Colors.white))),
              DataColumn(label: screenSize.width>660?  Text('Correct Positions',style: GoogleFonts.sarabun(fontSize: 16, color: Colors.white)): Text("Correct\nPositions",style: GoogleFonts.sarabun(fontSize: 12, color: Colors.white))),
            ],
            rows: <DataRow>[
               DataRow(
                cells: [
                DataCell(Text("Guess 1", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(
                    textAlign: TextAlign.center,
                  style:  const TextStyle(color: Colors.black, fontSize: 14),
                  enabled:enable==false
                  ? true:false,
                  controller: textController,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
                    }
                    else{enable=true;
                         enable2=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                DataCell(Center(child:correctNumber.isEmpty?const Text("_"):Text(correctNumber[0].toString(), style: const TextStyle(color: Colors.black, fontSize: 14),))),
                DataCell(Center(child:correctPositions.isEmpty?const Text("_"):Text(correctPositions[0].toString(), style: const TextStyle(color: Colors.black, fontSize: 14))))
              ]),

               DataRow(
                cells: [
                DataCell(Text("Guess 2", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  enabled:enable2
                  ? true:false,
                  controller: textController_2,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable2=false;
                          enable3=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>1?Text(correctNumber[1].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>1?Text(correctPositions[1].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
              DataRow(
                cells: [
                DataCell(Text("Guess 3", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable3
                  ? true:false,
                  controller: textController_3,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable3=false;
                         enable4=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>2?Text(correctNumber[2].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>2?Text(correctPositions[2].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
               DataRow(
                cells: [
                DataCell(Text("Guess 4", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable4
                  ? true:false,
                  controller: textController_4,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable4=false;
                         enable5=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>3?Text(correctNumber[3].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>3?Text(correctPositions[3].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
               DataRow(
                cells: [
                DataCell(Text("Guess 5", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable5
                  ? true:false,
                  controller: textController_5,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable5=false;
                         enable6=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>4?Text(correctNumber[4].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>4?Text(correctPositions[4].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),

              DataRow(
                cells: [
                DataCell(Text("Guess 6", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable6
                  ? true:false,
                  controller: textController_6,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable6=false;
                         enable7=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>5?Text(correctNumber[5].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>5?Text(correctPositions[5].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
               DataRow(
                cells: [
                DataCell(Text("Guess 7", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable7
                  ? true:false,
                  controller: textController_7,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable7=false;
                         enable8=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>6?Text(correctNumber[6].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>6?Text(correctPositions[6].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),

              DataRow(
                cells: [
                DataCell(Text("Guess 8", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable8
                  ? true:false,
                  controller: textController_8,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable8=false;
                         enable9=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize:0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>7?Text(correctNumber[7].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>7?Text(correctPositions[7].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
               DataRow(
                cells: [
                DataCell(Text("Guess 9", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable9
                  ? true:false,
                  controller: textController_9,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable9=false;
                         enable10=true;}
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>8?Text(correctNumber[8].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>8?Text(correctPositions[8].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
              DataRow(
                cells: [
                DataCell(Text("Guess 10", style: GoogleFonts.sarabun(fontSize: 14, color:const Color.fromARGB(255, 23, 3, 244)),)),
                DataCell(
                  TextField(textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black,fontSize: 14),
                  enabled:enable10
                  ? true:false,
                  controller: textController_10,
                  maxLength: 4,
                   onChanged: (value) {
                  updateNumbers(value);
                  setState(() {
                    if(numbers[0]==numbers[1]||numbers[0]==numbers[2]||numbers[0]==numbers[3]||numbers[1]==numbers[2]||numbers[1]==numbers[3]||numbers[2]==numbers[3])
                    {
                      showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Lỗi'),
                  content: const Text('Vui lòng nhập 4 số khác nhau',),
                  actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
              },
            );
            
                    }
                    else{enable10=false;
                         enableTest=true;
                        }
                  });
                                },
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.blue,fontSize: 0),
                    counterText: null,
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    ),),
                  keyboardType:
                       TextInputType.number,
                        inputFormatters: [
                        FilteringTextInputFormatter
                        .digitsOnly,
                                        ],
                                )
                ),
                 DataCell(Center(child:correctNumber.length>9?Text(correctNumber[9].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_"))),
                 DataCell(Center(child:correctPositions.length>9?Text(correctPositions[9].toString(), style: const TextStyle(color: Colors.black, fontSize: 14)):const Text("_")))
              ]),
            ],
          ),
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
                              if(numbers[0]==randomNumbers[0]&&numbers[1]==randomNumbers[1]&&numbers[2]==randomNumbers[2]&&numbers[3]==randomNumbers[3])
                              {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WinnerScreen(sendRandomNumber: numbers.toString(),),
                                    ),
                                  );
                                });
                              }
                              if(enableTest==true && numbers[0]!=randomNumbers[0]||enableTest==true && numbers[1]!=randomNumbers[1]||enableTest==true && numbers[2]!=randomNumbers[2]||enableTest==true && numbers[3]!=randomNumbers[3])
                              {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoserScreen(sendRandomNumber: randomNumbers.toString(),),
                                    ),
                                  );
                                });
                              }
                             else{
                              setState(() {
                              correct=0;
                               for (int i = 0; i < randomNumbers.length; i++) {
                                if (numbers.contains(randomNumbers[i])) {
                                  correct++;
                                }
                              }
                              correctNumber.add(correct);
                              positions=0;
                              for(int i = 0; i <randomNumbers.length; i++ ){
                                if(numbers[i]==randomNumbers[i])
                                {
                                  positions++;
                                }
                              }
                              correctPositions.add(positions);
                             });
                             }
                            },
                            child: Text(
                              "Guess",
                              style: GoogleFonts.sarabun(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Text(randomNumbers.toString()),
        // ),
      ],
    );
  }
}
