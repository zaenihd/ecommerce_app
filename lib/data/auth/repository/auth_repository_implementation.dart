import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_app/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce_app/domain/auth/repository/auth.dart';
import 'package:ecommerce_app/service_locater.dart';

class AuthRepositoryImplementation extends AuthRepository {
  @override
  Future<Either> signUp(UserCreationReq user) async{
    return sl<AuthFirebaseService>().signUp(user);
  }

}