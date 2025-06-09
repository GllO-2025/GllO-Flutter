/// 비동기 데이터 호출 상테
/// none: 초기, loading: 로딩중, success: 성공, failure: 실패
enum Status { none, loading, success, failure }

extension StatusExt on Status {
  bool get isInitial => this == Status.none;
  bool get isLoading => this == Status.loading;
  bool get isSuccess => this == Status.success;
  bool get isFailure => this == Status.failure;
}
