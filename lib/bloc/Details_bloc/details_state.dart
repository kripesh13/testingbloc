part of 'details_bloc.dart';

sealed class DetailsState extends Equatable {
  const DetailsState();
  
  @override
  List<Object> get props => [];
}

final class DetailsInitial extends DetailsState {}
