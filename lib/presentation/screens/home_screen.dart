import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_jrny_ui/presentation/widgets/center_star.dart';
import 'package:social_jrny_ui/presentation/widgets/memoji_widget.dart';
import 'package:social_jrny_ui/presentation/widgets/sj_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50.0,
              horizontal: 30.0,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // left memoji
                Positioned(
                  right: 180,
                  top: 100,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(-0.5236),
                    origin: const Offset(60, 60),
                    child: const Memoji(

                    ),
                  ),
                ),

                // right memoji
                Positioned(
                  left: 180,
                  top: 100,
                  child: Transform(
                    origin: const Offset(60, 60),
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(0.5236),
                    child: const Memoji(

                    ),
                  ),
                ),

                // center memoji
                const Positioned(
                  top: 90,
                  child: Memoji(

                    size: 150,
                  ),
                ),

                // logo
                const Positioned(
                  // bottom: 200,
                  top: 210,
                  child: CenterStar(),
                ),

                Column(
                  children: [
                    // signature
                    Text(
                      "thedevsaxist",
                      style: GoogleFonts.pacifico(
                        fontSize:
                            Theme.of(context).textTheme.titleLarge?.fontSize,
                      ),
                    ),

                    const Spacer(
                      flex: 8,
                    ),

                    Text(
                      'Start your new\nSocial Jrny',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      'Post, react, and start conversations\nthat bring good vibes only.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),

                    const Spacer(),

                    const SJButton(
                      text: 'Get Started',
                      type: SjButtonType.filled,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const SJButton(
                      text: 'Add an existing account',
                      type: SjButtonType.outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
