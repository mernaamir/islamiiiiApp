import 'package:firs_app/provider/myProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class themesheet extends StatelessWidget {
  themesheet({super.key});

  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var provider = Provider.of<myProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  provider.changeTheme(ThemeMode.light);
                },
                child: Text(AppLocalizations.of(context)!.light,
                    style: TextStyle(
                        color: provider.myTheme==ThemeMode.light
                            ? Color(0xffB7935F) : Colors.black,
                        fontSize: 30)),
              ),
                  provider.myTheme==ThemeMode.light
                  ? Icon(
                      Icons.done,
                      size: 30,
                      color: Color(0xffB7935F),
                    )
                  : SizedBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              InkWell(
                onTap: (){
                  provider.changeTheme(ThemeMode.dark);

                },
                child: Text(AppLocalizations.of(context)!.dark,
                    style: TextStyle(
                        color: provider.myTheme==ThemeMode.light ? Colors.black : Color(0xffB7935F),
                        fontSize: 30)),
              ),
            provider.myTheme==ThemeMode.light
                  ? SizedBox()
                  : Icon(
                      Icons.done,
                      size: 30,
                      color: Color(0xffB7935F),
                    )
            ],
          )
        ],
      ),
    );
  }
}
