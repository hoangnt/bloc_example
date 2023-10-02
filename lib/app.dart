import 'package:bloc_example/common/constant/app_color.dart';
import 'package:bloc_example/modules/home/blocs/entry_bloc.dart';
import 'package:bloc_example/modules/home/screen/entry_screen.dart';
import 'package:bloc_example/modules/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => EntryBloc()),
        BlocProvider(create: (context) => SettingsBloc()),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          theme: ThemeData(
            primaryColor: AppColor.primary,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: AppBarTheme(
              centerTitle: true,
              titleSpacing: 0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              iconTheme: IconThemeData(color: Colors.black, size: 20.sp),
            ),
          ),
          builder: EasyLoading.init(),
          home: EntryScreen(),
        ),
      ),
    );
  }
}
