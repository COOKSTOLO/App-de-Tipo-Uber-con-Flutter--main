class BlocFormItem {

  final String Value;
  final String? Error;

  const BlocFormItem({
    this.Value = '',
    this.Error
  });

  BlocFormItem copyWith({
    String? Value,
    String? Error
  }) {
    return BlocFormItem(
      Value: Value ?? this.Value,
      Error: Error ?? this.Error
    );
  }
  
}