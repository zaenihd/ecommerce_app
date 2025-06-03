import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_app/domain/auth/repository/auth.dart';
import 'package:ecommerce_app/service_locater.dart';

class SignupUseCase implements Usecase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq ? params}) async{
    return await sl<AuthRepository>().signUp(params!);
  }

}