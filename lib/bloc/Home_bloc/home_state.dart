part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int count;
  const HomeState({this.count = 0});

  HomeState copywith({int? count}) {
    return HomeState(count: count ?? this.count);
  }

  @override
  List<Object> get props => [count];
}
