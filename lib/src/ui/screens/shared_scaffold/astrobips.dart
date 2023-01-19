import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cosmosense/src/state/riverpods/apod_riverpod.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class NasaImage extends ConsumerWidget {
  const NasaImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apod = ref.watch(apodRiverpod);
    return SafeArea(
      child: SingleChildScrollView(
        child: apod.when(
          loading: () {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          },
          data: (apodData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "NASA APOD",
                        style: Styles.title(),
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        apodData.url ?? "image",
                        loadingBuilder: (context, child, loadingProgress) {
                          return child;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  apodData.title ?? "",
                  style: TextStyle(
                      fontFamily: "Daesang",
                      color: Palette.secondary,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Builder(
                  builder: (context) {
                    final months = [
                      "January",
                      "Febuary",
                      "March",
                      "April",
                      "May",
                      "June",
                      "July",
                      "September",
                      "October",
                      "November",
                      "December"
                    ];
                    final splitedDate = apodData.date!.split("-");
                    final dateString = StringBuffer(splitedDate[2]);
                    if (splitedDate[2].endsWith("1")) {
                      dateString.write("st");
                    } else if (splitedDate[2].endsWith("2")) {
                      dateString.write("nd");
                    } else if (splitedDate[2].endsWith("3")) {
                      dateString.write("rd");
                    } else {
                      dateString.write("th");
                    }
                    dateString.write(", ${months[int.parse(splitedDate[1])]}");
                    dateString.write(" ${splitedDate[0]}");

                    return Text(
                      dateString.toString(),
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      apodData.explanation ?? "",
                      textStyle: const TextStyle(
                        fontSize: 14.0,
                      ),
                      speed: const Duration(milliseconds: 10),
                    ),
                  ],
                  repeatForever: false,
                  displayFullTextOnTap: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "copyrights",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.copyright,
                      size: 14,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      apodData.copyright ?? "",
                      style: GoogleFonts.tangerine(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Palette.secondary,
                      ),
                    ),
                  ],
                )
              ],
            );
          },
          error: (error, stackTrace) {
            return Text(
              error.toString(),
            );
          },
        ),
      ),
    );
  }
}
