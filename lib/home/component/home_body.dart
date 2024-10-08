
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homeapp/home/home_page_vm.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // 1. 창고 만들기
    // 계속 볼거니까 watch로 !

    int? num = ref.watch(homeProvider);

    if(num == null){
      return Center(
        child: CircularProgressIndicator(),
      );
    }else{
      return Center(
        child: Text("숫자 : $num"),
      );
    }
  }
}
