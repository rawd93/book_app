import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // بقلي شينج او ستيت كيف عم تتغير
    log(change.toString());
    super.onChange(bloc, change);
  }
}
