class DataState<T> {
  Status? status;
  T? data;
  String message = "";

  DataState({
    this.message = "Unknown error occurred",
    this.data,
    this.status,
  });
  DataState.loading(this.message) : status = Status.loading;
  DataState.completed(this.data) : status = Status.completed;
  DataState.error(this.message) : status = Status.error;

  bool isInitialState() => !(status == Status.completed && data != null);

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { loading, completed, error }
