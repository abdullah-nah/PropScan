abstract final class HomeState {
  const HomeState();
}

final class HomeInitial extends HomeState {}

final class SelectFilterItem extends HomeState {
  final int index;

  const SelectFilterItem(this.index);
}
