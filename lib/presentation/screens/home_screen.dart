import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_jrny_ui/presentation/widgets/center_star.dart';
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
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
            child: Column(
              children: [
                // signature
                Text(
                  "thedevsaxist",
                  style: GoogleFonts.pacifico(
                    fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // logo
                const CenterStar(),

                const SizedBox(
                  height: 60,
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
          ),
        ),
      ),
    );
  }
}
