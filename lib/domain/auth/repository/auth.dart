import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/auth/models/user_creation_req.dart';

abstract class AuthRepository {
  Future<Either> signUp(UserCreationReq user);
}
