import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mainScreen() {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: SizedBox(
        height: double.infinity - 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.thunderstorm_outlined,
                    size: 70,
                    color: Colors.black,
                    weight: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "It's\nfucking\n",
                            style: GoogleFonts.inter(
                                fontSize: 60,
                                height: 0.9,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text: "raining.",
                                style: GoogleFonts.inter(
                                  fontSize: 60,
                                  height: 0.9,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..strokeWidth = 1.3
                                    ..color = Colors.black
                                    ..style = PaintingStyle.stroke,
                                ),
                              ),
                              TextSpan(
                                text: "\nnow.",
                                style: GoogleFonts.inter(
                                    fontSize: 60,
                                    height: 0.9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Text(
                          "You can look outside to get more information.",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                    ),
                    const SizedBox(
                      width: 130,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text("Be Prepared"),
                              Spacer()
                            ],
                          ),
                          Row(
                            children: [
                              Spacer(),
                              Text("for the Weather"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                    ),
                    Text(
                      "4 PM",
                      style: GoogleFonts.inter(
                          fontSize: 45,
                          height: 0.9,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}