import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ludokin_agent/ui/widgets/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("transaction").tr(),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
            child:Column(
          children: [
            Gap(size:5),
            Container(
              height: 140,
                width: 289,
                margin: EdgeInsets.all(20),
                child:Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.deepPurple,
                  child: Column(
                      children: [
                        Text(

                    "balance",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
              ),
              ).tr(),
                        Gap(size: 45),
                        Text(
                            "720,500 Kins",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),)
                    ]
                ),

            )
      ),
            Row(
              children: [
                Expanded(child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, Routes.buykin);
                    },
                    child: Center(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(
                           "buy",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,),
                            ).tr(),
                          SvgPicture.asset('assets/images/inbox-archive-fill.svg',color: Colors.white,)
                    ])
    )
                )
                ),
                Gap(size: 73),
                Expanded(child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, Routes.sellkin);
                    },
                    child: Center(
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[Text(
                      "sell",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ).tr(),
                          SvgPicture.asset('assets/images/inbox-unarchive-fill.svg', color: Colors.white,)
                      ])
                    )
                )
                )
              ],
            ),
              Gap(size: 20),
              Container(
              alignment: Alignment.bottomLeft,
                child:Text("Transactions Recentes",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.deepPurple,
              decoration: TextDecoration.underline,

            )
            )
      )

          ],
        )
      )
      ),
      //

    )
    ;
  }

}