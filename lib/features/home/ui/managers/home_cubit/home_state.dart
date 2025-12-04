part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<ProductItemModel> products;
  final List<String> banners;

  HomeSuccess({required this.products, required this.banners});
}

final class HomeError extends HomeState {
  final String message;

  HomeError({required this.message});
}
