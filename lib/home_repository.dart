// 통신 담당
// 컨트롤러에 접근하는 매서드를 여기 만들거임
// 이 repository는 스프링의 api에 붙는게 목적임
// return 받은 값으로 상태를 변경시켜야 한다.
//  창고관리자가 리퍼지토리에 요청해서 데이터 다운받고 다시 창고관리자가 받아서
// 창고를 갱신시켜야 한다.
// 그리고나서 뷰 응답이 필요없다.
// watch 하고 있으니까 return 따위 필요없음
//
class HomeRepository {
  Future<int> fetchNumber() {
    return Future.delayed(Duration(seconds: 3), () => 3);
  }

  int fetchNumberV2() {
    return 5;
  }
}
