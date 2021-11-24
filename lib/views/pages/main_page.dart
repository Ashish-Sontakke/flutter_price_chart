import 'package:app/views/widgets/action_bar.dart';
import 'package:app/views/widgets/chart.dart';
import 'package:app/views/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  constraints: BoxConstraints(maxHeight: 1400),
                  child: Stack(
                    children: [
                      const Positioned(top: 60, left: 60, child: PriceWidget()),
                      Positioned(
                        top: 222,
                        left: 60,
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 600),
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Color(0xff4B40EE),
                            labelStyle: GoogleFonts.varelaRound(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color(0xff1A243A),
                            ),
                            unselectedLabelStyle: GoogleFonts.varelaRound(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color(0xff6F7177),
                            ),
                            labelColor: const Color(0xff1A243A),
                            unselectedLabelColor: const Color(0xff6F7177),
                            tabs: const [
                              Tab(
                                text: "Summary",
                              ),
                              Tab(
                                text: "Chart",
                              ),
                              Tab(
                                text: "Statistics",
                              ),
                              Tab(
                                text: "Analysis",
                              ),
                              Tab(
                                text: "Settings",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(top: 330, left: 60, child: ActionBar()),
                      Positioned(
                        top: 388,
                        left: 60,
                        child: Chart(),
                      ),
                      Positioned(top: 600, child: SizedBox(height: 60)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
