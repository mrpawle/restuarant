class CheckInStatus {
  int? statusFlag;

  CheckInStatus({this.statusFlag});

  factory CheckInStatus.fromJson(Map<String, dynamic> json) => CheckInStatus(
        statusFlag: json['StatusFlag'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'StatusFlag': statusFlag,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckInStatus && other.statusFlag == statusFlag;
  }

  @override
  int get hashCode => statusFlag.hashCode;
}
