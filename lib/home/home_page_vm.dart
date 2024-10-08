import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_repository.dart';

// 뷰 모델 (창고)
class HomeVM extends StateNotifier<int?> {
  HomeVM(super.state);

  // selectOne

  //selectAll

  // login

  //logout

  Future<void> notifyInit() async {
    int num = await HomeRepository().fetchNumber(); // 3초
    // 상태를 갱신하기 위해서 NUM을 써야하니까 Future<int>로 안받았다.
    state = num; // 상태가 바뀜
  }
}

// 뷰 모델 관리하는 관리자 (창고 관리자)
// watch하거나, read할때 실행됨 (View에서 실행시킴)
final homeProvider = StateNotifierProvider<HomeVM, int?>((ref) { // int? 타입
  print("homeProvider가 HomeVM을 생성함");
  HomeVM vm = HomeVM(null);
  vm.notifyInit();
  return vm; // 창고를 return
});
