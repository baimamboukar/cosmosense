import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/features/home/logic/riverpods/apod_riverpod.dart';
import 'package:cosmosense/src/utils/date_parser.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class NasaImage extends ConsumerWidget {
  const NasaImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apod = ref.watch(astronomicPicturesProvider);
    return SafeArea(
      child: SingleChildScrollView(
        child: apod.when(
          loading: () {
            return const Center(
              child: CupertinoActivityIndicator(radius: 28),
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
                        style: Styles.title().copyWith(fontFamily: "Daesang"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                      child: Center(
                        child: Column(
                          children: [
                            IconButton(
                              icon: const HeroIcon(
                                HeroIcons.videoCamera,
                              ),
                              onPressed: () async {
                                final url = Uri.parse(apodData.url!);
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                            const Text("Click to Launch on Youtube")
                          ],
                        ),
                      ),
                    )
                        // child: apodData.url != null
                        //     ? Image.network(
                        //         apodData.url!,
                        //         loadingBuilder:
                        //             (context, child, loadingProgress) {
                        //           return child;
                        //         },
                        //       )
                        //     : const SizedBox(),
                        ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    apodData.title ?? "",
                    style: TextStyle(
                        fontFamily: "Varino",
                        color: Palette.secondary,
                        fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Builder(
                    builder: (context) {
                      final dateString =
                          DateParser.parse(apodData.date ?? "2020-10-07");

                      return Text(
                        dateString.toString(),
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SelectableText(
                    apodData.explanation ?? "",
                    style: const TextStyle(fontSize: 14.0, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(apodData.copyright ?? "",
                          style: Styles.title()
                              .copyWith(fontFamily: "Daesang", fontSize: 10)),
                    ],
                  ),
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
